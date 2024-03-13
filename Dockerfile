# set base image (host OS)
FROM ubuntu:22.04


# install dependencies
# RUN useradd --user-group --system --create-home --no-log-init sc

RUN dpkg --add-architecture i386
RUN apt update
RUN apt -y install gcc
RUN apt -y install gdb
RUN apt -y install gcc-multilib
RUN apt -y install gdb-multiarch
RUN apt -y install libc6-dbg:i386
RUN apt -y install valgrind
RUN apt -y install nano


#USER sc
COPY ./.gdbinit /root/.gdbinit
WORKDIR /root

CMD ["/bin/bash"]