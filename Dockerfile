FROM harbor.apps.infra.hahl.id.au/cache/library/centos:latest

MAINTAINER Mark Hahl <mark@hahl.id.au>

LABEL Description="Provides image building tools" Version="0.1"

RUN dnf install -y libguestfs-tools \
                   qemu-img \
                   libvirt \
                   gcc \
                   python36 python36-pip gcc-c++ \
                   autoconf redhat-rpm-config \
                   python36-devel && \
    pip install --upgrade pip && \
    pip install ansible openstacksdk openstackclient pyparsing==2.4.7 && \
    dnf uninstall -y python36-devel gcc gcc+c++ autoconf redhat-rpm-config automake && \
    dnf clean all -y


CMD ["/bin/bash"]


