FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN pip install numpy
# Installazione librerie Python per Flask e LangChain
# 2. Aggiornamento pip e installazione dipendenze core
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir "pydantic>=2.9.0" "typing-extensions>=4.12.2"

# 3. Installazione LangChain, Community e Flask
RUN pip install --no-cache-dir --upgrade \
    "langchain-core>=0.3.15" \
    "langchain-ollama>=0.2.0" \
    "langgraph>=0.2.53" \
    "langchain-community" \
    pypdf \
    flask
# DO NOT EDIT USER VALUE
USER jovyan
