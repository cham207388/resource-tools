import time
import logging
from concurrent.futures import ThreadPoolExecutor
import pandas as pd
from sqlalchemy import create_engine

# Create the database engine
def query_for_attorneys(self):
    engine = create_engine("database_connection_url")

    # Define your query
    query = 'select * from library'

    # Set the chunk size (number of rows per chunk)
    chunksize = 10000  # You can adjust this based on your memory capacity

    # Initialize an empty list to collect the dataframes
    chunks = []

    # Query the database in chunks
    for chunk in pd.read_sql_query(query, engine, chunksize=chunksize, index_col='bookId'):
        chunks.append(chunk)

    # Combine all chunks into a single DataFrame
    existing_attorneys = pd.concat(chunks)

    # Optionally reset the index if needed
    existing_attorneys.reset_index(drop=True, inplace=True)
    
    return existing_attorneys

# Now you can work with `existing_attorneys` as usual

# ---

# Configure logging
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(levelname)s - %(message)s')

# Create the database engine
engine = create_engine("database_connection_url")

# Define your query
query = 'select * from library'

# Set the chunk size (number of rows per chunk)
chunksize = 10000

# Initialize an empty list to collect the processed chunks
processed_chunks = []

# Query the database in chunks and process them in parallel
with ThreadPoolExecutor() as executor:
    futures = []
    for i, chunk in enumerate(pd.read_sql_query(query, engine, chunksize=chunksize, index_col='bookId')):
        logging.info(f'Processing chunk {i + 1}')
        # Submit the chunk as-is
        futures.append(executor.submit(lambda x: x, chunk))

        # Sleep for 1 second after processing each chunk
        time.sleep(1)

    for future in futures:
        processed_chunks.append(future.result())

# Combine all processed chunks into a single DataFrame
existing_attorneys = pd.concat(processed_chunks)

# Optionally reset the index
existing_attorneys.reset_index(drop=True, inplace=True)

logging.info('All chunks processed, concatenated, and available as a single DataFrame')
