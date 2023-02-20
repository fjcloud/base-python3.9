FROM image-registry.openshift-image-registry.svc:5000/openshift/python:3.9-ubi9

USER root

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir "fastapi>=0.92.0"
