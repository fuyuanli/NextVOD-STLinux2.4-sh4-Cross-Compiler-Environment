FROM i386/ubuntu:18.04
MAINTAINER fyli@cs.nctu.edu.tw
ARG DEBIAN_FRONTEND=noninteractive

RUN sed -i 's/archive.ubuntu.com/ubuntu.cs.nctu.edu.tw/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install rpm python-urlgrabber python-rpm python-sqlitecachec wget iputils-ping install-info -y
RUN wget http://archive.stlinux.com/stlinux/2.4/misc/stlinux24-host-STLinux_deps-20150225-1.i386.rpm
RUN wget http://archive.stlinux.com/stlinux/2.4/install
RUN sed -i 's/${net_hostname}\/pub/archive.stlinux.com/g' install
RUN chmod +x install
RUN rpm -ivh stlinux24-host-STLinux_deps-20150225-1.i386.rpm
RUN sed -i 's/#!\/bin\/sh/#!\/bin\/bash/g' install
RUN ./install -d all-sh4-glibc
RUN sed -i 's/www.stlinux.com\/pub/archive.stlinux.com/g' /opt/STM/STLinux-2.4/host/etc/yum/yum.conf
ENV PATH="${PATH}:/opt/STM/STLinux-2.4/devkit/sh4/bin"
