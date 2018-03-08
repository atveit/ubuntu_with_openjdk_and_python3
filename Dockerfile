FROM ubuntu:latest
MAINTAINER amundtveit "atveit@gmail.com"

RUN apt-get update --yes
RUN apt-get upgrade --yes
RUN apt-get install --yes default-jdk mysql-client ca-certificates curl git unzip netcat 

RUN apt-get install --yes python3 python3-pip python3-dev

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

#RUN echo 'alias python=python3' >>  ~/.bashrc
RUN ln -sf /usr/bin/python3 /usr/bin/python
RUN ln -sf /usr/bin/pip3 /usr/bin/pip


# Define default command.
CMD ["bash"]

