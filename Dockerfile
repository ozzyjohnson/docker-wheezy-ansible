FROM debian:wheezy

MAINTAINER Ozzy Johnson <ozzy.johnson@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Update and install minimal.
RUN \
  apt-get update && \
  apt-get install \ 
          build-essential \
          python \
          python-dev \
          python-pip \
          python-virtualenv \
            --yes \
            --no-install-recommends \
            --no-install-suggests

# Clean up packages.
RUN apt-get clean

# Install ansible.
RUN pip install ansible

# Default command.
CMD ["bash"]
