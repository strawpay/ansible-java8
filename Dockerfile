FROM ansible/ansible:ubuntu1604

#
# Java8
#
RUN apt-get update

RUN apt-get install -y software-properties-common

RUN apt-add-repository -y ppa:webupd8team/java

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && apt-get update && apt-get install -y oracle-java8-installer ca-certificates && apt-get install -y rsync

#
# Ansible
#

RUN pip install --upgrade pip

RUN pip install ansible==2.2.1.0

