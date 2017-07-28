FROM ubuntu

RUN apt-get update > /dev/null
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install -y software-properties-common > /dev/null
RUN add-apt-repository -y ppa:webupd8team/java > /dev/null
RUN apt-get update > /dev/null
RUN apt-get install -y oracle-java8-installer > /dev/null
