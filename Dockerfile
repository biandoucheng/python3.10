#基础环境
FROM centos:7

#复制脚本及配置文件到环境
COPY ./install.sh ./

#复制pip镜像地址文件到环境
COPY ./pip.conf /usr/local/etc/

#执行lnp环境安装脚本
RUN yum install -y dos2unix && chmod +x ./install.sh && dos2unix ./install.sh && /bin/bash -c ./install.sh