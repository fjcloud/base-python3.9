FROM image-registry.openshift-image-registry.svc:5000/openshift/python:3.9-ubi9

# Add application sources to a directory that the assemble script expects them
# and set permissions so that the container runs without root access
USER 0
RUN /usr/bin/fix-permissions /tmp/src
USER 1001

# Install the dependencies
RUN /usr/libexec/s2i/assemble

# Set the default command for the resulting image
CMD /usr/libexec/s2i/run
