A docker image with Ansible and Oracle Java

> docker build -t strawpay/ansible-java .

> docker push strawpay/ansible-java

docker run strawpay/ansible-java java -version
docker run strawpay/ansible-java ansible --version
