from neo4j_movie_recommender import agent_executor

if __name__ == "__main__":
    original_query = "What do you know about person Keanu?"
    followup_query = "Keanu Reeves"
    chat_history = [
        (
            "What do you know about person Keanu ?",
            "I found multiple people named Keanu. Could you please specify "
            "which one you are interested in? Here are some options:"
            "\n\n1. Keanu Reeves\n2. David Keanu Sai ",
        )
    ]
    print(agent_executor.invoke({"input": original_query}))
    print(
        agent_executor.invoke({"input": followup_query, "chat_history": chat_history})
    )
