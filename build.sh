#!/bin/sh -e

docker build -t strawpay/ansible-java8 .
docker push strawpay/ansible-java8

docker run --rm strawpay/ansible-java8 ansible --version 
docker run --rm strawpay/ansible-java8 java -version

echo "docker tag strawpay/ansible-java8 strawpay/ansible-java8:{version}_{version}"
echo "docker push strawpay/ansible-java8:{version}_{version}"
