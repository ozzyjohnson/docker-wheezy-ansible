#Google mirrors are very fast.
FROM google/debian:wheezy

MAINTAINER Ozzy Johnson <ozzy.johnson@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Update and install minimal.
RUN \
  apt-get update \
            --quiet && \
  apt-get install \ 
            --yes \
            --no-install-recommends \
            --no-install-suggests \
          build-essential \
          python \
          python-dev \
          python-pip \
          python-virtualenv  && \

# Clean up packages.
  apt-get clean && \
      rm -rf /var/lib/apt/lists/*

# Install ansible.
RUN pip install ansible

# Default command.
CMD ["bash"]
