FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
apt-get install -y python-pip && \
chown 1000 ~/ && \
pip install awscli
USER jenkins # drop back to the regular jenkins user - good practice
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
