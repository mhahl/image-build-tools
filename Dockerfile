FROM harbor.apps.infra.hahl.id.au/cache/library/centos:8

MAINTAINER Mark Hahl <mark@hahl.id.au>

LABEL Description="Provides image building tools" Version="0.3"

RUN dnf install centos-release-openstack-victoria dnf-plugins-core -y && \
    dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
    dnf install -y libguestfs-tools python3-openstackclient packer && \
    dnf clean all -y

CMD ["/bin/bash"]


