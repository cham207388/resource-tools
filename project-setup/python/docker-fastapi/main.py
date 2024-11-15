from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
  return "Learning Kubernetes version 0.1"
