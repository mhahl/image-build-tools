FROM quay.io/centos/amd64:stream9

MAINTAINER Mark Hahl <mark@hahl.id.au>

LABEL Description="Provides image building tools" Version="1.0"

RUN rm /etc/resolv.conf && \
    echo "nameserver 9.9.9.9" > /etc/resolv.conf

RUN dnf install centos-release-openstack-victoria dnf-plugins-core -y && \
    dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
    dnf install -y libguestfs-tools python3-openstackclient packer && \
    dnf clean all -y

CMD ["/bin/bash"]


