FROM rockylinux:9.2
LABEL Maintainer="MIT <admin@mitesp.com>"
LABEL Description="Rocky Linux With nginx"
# Install packages
RUN dnf install -y iproute && \
  dnf install -y net-tools && \
  dnf install -y iputils && \
  dnf install -y procps-ng && \
  dnf install -y telnet && \
  dnf install -y nmap-ncat &&
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
