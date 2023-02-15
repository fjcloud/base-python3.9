FROM image-registry.openshift-image-registry.svc:5000/openshift/python:3.9-ubi9

# Install the dependencies
RUN /usr/libexec/s2i/assemble

# Set the default command for the resulting image
CMD /usr/libexec/s2i/run
