
FROM centos:latest

RUN yum install net-tools -y && yum install openssh-server -y && yum install passwd -y

RUN echo redhat | passwd root --stdin

RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"] && /bin/bash
