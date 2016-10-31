#!/bin/sh

docker build -t strawpay/ansible-java8 .
docker push strawpay/ansible-java8

docker run --rm strawpay/ansible-java8 ansible --version 
docker run --rm strawpay/ansible-java8 java -version
