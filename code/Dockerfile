FROM centos:latest
# Installing the required tools/softwares
RUN yum install openssh-server -y && yum install openssh-clients -y  && ssh-keygen -A 
# For tranferring public keys of client to server.
ADD starting_script.sh /starting_script.sh
CMD ["/starting_script.sh"]
MAINTAINER Prakhar Khandelwal  <tiglon.root@gmail.com>
