FROM harbor.apps.infra.hahl.id.au/cache/library/centos:latest

MAINTAINER Mark Hahl <mark@hahl.id.au>

LABEL Description="Provides image building tools" Version="0.1"

RUN dnf install -y libguestfs-tools \
                   qemu-img \
                   libvirt \
                   gcc \
                   python38 python3-pip gcc-c++ \
                   autoconf redhat-rpm-config \
                   python38-devel && \
    pip3 install --upgrade pip && \
    pip3 install ansible openstacksdk openstackclient pyparsing==2.4.7 && \
    dnf uninstall -y python38-devel && \
    dnf clean all -y


CMD ["/bin/bash"]


