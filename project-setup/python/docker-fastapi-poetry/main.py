from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
  return "Creating an effective learning system: Home Page"
