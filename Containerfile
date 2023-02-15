FROM registry.redhat.io/ubi9/python-39

USER root

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir fastapi>=0.92.0
