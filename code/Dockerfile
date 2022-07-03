FROM centos:latest
RUN yum install openssh-server -y && yum install openssh-clients -y  && ssh-keygen -A 
ADD starting_script.sh /starting_script.sh
CMD ["/starting_script.sh"]
MAINTAINER Prakhar Khandelwal  <tiglon.root@gmail.com>
