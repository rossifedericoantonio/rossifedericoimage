FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
##-- installo ollama --##
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://ollama.com/install.sh | sh

## -- installo libreria numpy di python --##
RUN pip install numpy

##-- installo librerie python per Flask e LangChain --##
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir "pydantic>=2.9.0" "typing-extensions>=4.12.2"

##-- installo LangChain, Community e Flask --##
RUN pip install --no-cache-dir --upgrade \
    "langchain-core>=0.3.15" \
    "langchain-ollama>=0.2.0" \
    "langgraph>=0.2.53" \
    "langchain-community" \
    pypdf \
    flask

# DO NOT EDIT USER VALUE
USER jovyan
