#Google mirrors are very fast.
FROM ozzyjohnson/wheezy-python

MAINTAINER Ozzy Johnson <ozzy.johnson@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# # Install ansible.
RUN pip install ansible

# Default command.
CMD ["bash"]
