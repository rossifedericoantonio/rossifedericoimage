FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN pip install numpy
# Installazione librerie Python per Flask e LangChain
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    flask \
    "pydantic>=2.9.0" \
    "typing-extensions>=4.12.2" \
    "langchain-core>=0.3.15" \
    "langchain-ollama>=0.2.0" \
    "langgraph>=0.2.53" \
    "langchain-community"
# DO NOT EDIT USER VALUE
USER jovyan
