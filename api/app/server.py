from fastapi import FastAPI
from fastapi.responses import RedirectResponse
from langserve import add_routes
from  neo4j_movie_recommender import agent_executor as  neo4j_movie_recommender

app = FastAPI()

@app.get("/version")
def get_version():
    return {"version": "1.0.0", "author": "Prashanth Baskar"}


@app.get("/")
async def redirect_root_to_docs():
    return RedirectResponse("/docs")


# Edit this to add the chain you want to add
add_routes(app,  neo4j_movie_recommender, path="/movie-agent")

if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)
