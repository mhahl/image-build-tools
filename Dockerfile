FROM harbor.apps.infra.hahl.id.au/cache/library/centos:8

MAINTAINER Mark Hahl <mark@hahl.id.au>

LABEL Description="Provides image building tools" Version="0.2"

RUN dnf install centos-release-openstack-ussuri -y && \
    dnf install -y libguestfs-tools python3-openstackclient && \
    dnf clean all -y

CMD ["/bin/bash"]


