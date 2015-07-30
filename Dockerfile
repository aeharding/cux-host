FROM ubuntu:12.04
MAINTAINER Alexander Harding <alexander.harding@software.dell.com>

# install lightweight http server for static content
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim webfs # vim installs mime types

RUN mkdir /code

EXPOSE 8001

# add your code with a link on runtime
# https://docs.docker.com/reference/run/#volume-shared-filesystems
CMD webfsd -p 8001 -r /code -F