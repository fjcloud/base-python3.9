FROM registry.redhat.io/ubi9/python-39

USER root

RUN pip install fastapi>=0.92.0
