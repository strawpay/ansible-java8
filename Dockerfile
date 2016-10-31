FROM webdevops/ansible:ubuntu-16.04

#
# Ansible and Java8
#

RUN apt-get install -y software-properties-common

RUN apt-add-repository -y ppa:webupd8team/java

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && apt-get update && apt-get install -y oracle-java8-installer ca-certificates && apt-get install -y rsync
