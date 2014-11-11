#Google mirrors are very fast.
FROM ozzyjohnson/wheezy-python

MAINTAINER Ozzy Johnson <docker@ozzy.io>

ENV DEBIAN_FRONTEND noninteractive

# Install ansible.
RUN pip install ansible

# Configuration volume.
ONBUILD VOLUME ["/.ansible.cfg"]

# Default command.
CMD ["bash"]
