from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
  return "Continuous Integration and Continuous Deployment with FastAPI version 0.2"
