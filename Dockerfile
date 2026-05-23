FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN pip install numpy
# Installazione librerie Python per Flask e LangChain
RUN pip install --no-cache-dir \
    flask \
    "langchain-core>=0.3.0" \
    "langchain-ollama>=0.2.0" \
    "langchain-community" \
    "langgraph>=0.2.0" \
    "typing-extensions>=4.10.0"
# DO NOT EDIT USER VALUE
USER jovyan
