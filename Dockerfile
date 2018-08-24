##
# docker build -t ledocker .
# docker run -it -v project:/opt/project ledocker
##

FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install g++ -y
RUN apt-get install make -y
RUN apt-get install cmake -y

RUN apt-get install mesa-common-dev -y
RUN apt-get install libglu1-mesa-dev -y
RUN apt-get install libcurl4-openssl-dev  -y
RUN apt-get install libxft-dev -y
RUN apt-get install libsdl2-dev -y
RUN apt-get install libopenal-dev -y
RUN apt-get install libssl-dev -y
RUN apt-get install libcrypto++-dev -y

RUN apt-get install less -y
RUN apt-get install nano -y

RUN apt-get install gcc-multilib g++-multilib -y

RUN apt-get install gcc-4.8-multilib g++-4.8-multilib -y

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get upgrade -y

RUN groupadd -g 1000 leadwerks && \
    useradd -r -u 1000 -g leadwerks leadwerks

USER leadwerks

ADD Leadwerks/ /opt/Leadwerks

CMD cd /opt/project; cmake .; make;
