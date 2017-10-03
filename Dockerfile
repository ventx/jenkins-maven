FROM jenkins/jenkins
USER root
RUN apt-get update && \
apt-get install -y python-pip default-jdk docker xmlstarlet && \
chown 1000 ~/ && \
pip install awscli 
#User 1000
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
