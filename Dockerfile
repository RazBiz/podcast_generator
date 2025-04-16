FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.12 \
    python3-pip \
    python3-venv \
    git

# Set up a virtual environment and install PyYAML in it
RUN python3.12 -m venv /venv \
 && /venv/bin/pip install --upgrade pip \
 && /venv/bin/pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ("/entrypoint.sh")
