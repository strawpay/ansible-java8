#!/bin/sh -e

docker build -t strawpay/ansible-java .
docker push strawpay/ansible-java

docker run --rm strawpay/ansible-java ansible --version 
docker run --rm strawpay/ansible-java java -version

echo "docker tag strawpay/ansible-java strawpay/ansible-java:{version}-{version}"
echo "docker push strawpay/ansible-java:{version}-{version}"
