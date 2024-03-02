# set base image (host OS)
FROM ubuntu:22.04

# set the working directory in the container
# WORKDIR /app

# install dependencies
RUN apt update
RUN apt -y install gcc
RUN apt -y install gdb
RUN apt -y install valgrind
RUN useradd --user-group --system --create-home --no-log-init sc
USER sc
COPY ./.gdbinit /home/sc/.gdbinit
WORKDIR /home/sc


#RUN apt-get -y install net-tools
#RUN apt-get -y install iputils-ping
#RUN apt-get -y install python3
# INSTALL BASH IN ALPINE, nmap and ifconfig already included
#RUN apk update && apk add bash

# copy the content of the local src directory to the working directory
# COPY src/ .

# command to run on container start
#CMD [ "python3", "./nmpa_utility.py", ]
#CMD [ "python3", "./test_zmq.py"]
CMD ["/bin/bash"]