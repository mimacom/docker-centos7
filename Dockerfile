FROM centos:7
MAINTAINER sysadmin@mimacom.com

ENV UID 5000

LABEL Description="CentOS 7"

RUN yum update -y && \
    rm -rf /var/cache/yum/* && \
    yum install -y bzip2 && \
    useradd --shell /bin/bash -u ${UID} --create-home -o -c "" -m user
