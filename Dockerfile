FROM centos

RUN useradd jj -p "" -G wheel
RUN sudo -u jj scp jj17@info.jj22.de:.ssh/bwcloud /home/jj/.ssh/.
RUN sudo -u jj scp jj17@info.jj22.de:.ssh/authorized_keys /home/jj/.ssh/.
RUN userdel centos
RUN rm -rf /home/centos


RUN yum update -y
RUN yum install bash-completion
RUN yum install podman-docker
RUN yum install PackageKit-command-not-found

RUN adduser jj -g wheel -p ""
