import logging
from uvicorn import Config, Server
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    config = Config(app, host='0.0.0.0', port=8000, log_level='info')
    server = Server(config)
    server.run()






# http://127.0.0.1:8000/docs