FROM centos
RUN yum update -y
RUN yum install bash-completion
RUN yum install podman-docker
RUN yum install PackageKit-command-not-found

RUN adduser jj -g wheel -p ""
