#
# ElasticSearch Dockerfile
#
# Modified from https://github.com/dockerfile/elasticsearch for the BigBoards Hex.
#

# Pull base image.
FROM bigboards/base-__arch__

MAINTAINER bigboards

USER root

# install curl
RUN apt-get update && apt-get install -y libssl-dev libffi-dev python-dev python-pip

# Install Butterfly
RUN \
  pip install -I butterfly==1.5.10 

# Define default command.
CMD ["butterfly.server.py", "--host=0.0.0.0", "--unsecure"]

# Expose ports.
EXPOSE 57575 
