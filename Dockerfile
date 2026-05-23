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
    langchain \
    langchain-community \
    langchain-core \
    langchain-ollama \
    langgraph
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
