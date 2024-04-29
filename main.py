import os
import uvicorn
from typing import Union

from fastapi import FastAPI
from libs.moduleA import console_a

app = FastAPI()

# test import from subfolder
console_a()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}


is_debug = os.getenv("DEBUG", "False").lower() == "true"

if __name__ == "__main__":
    if is_debug:
        uvicorn.run(
            "main:app",
            host="0.0.0.0",
            port=8000,
            reload=is_debug,
        )
    else:
        uvicorn.run(
            app,
            host="0.0.0.0",
            port=8000,
        )
