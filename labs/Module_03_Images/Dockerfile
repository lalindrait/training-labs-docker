FROM rockylinux:9.1
LABEL Maintainer="LV <admin@lv.com>"
LABEL Description="Rocky Linux With nginx"
# Install packages
RUN dnf install -y iproute && \
  dnf install -y net-tools && \
  dnf install -y iputils && \
  dnf install -y procps-ng && \
  dnf install -y telnet && \
  dnf install -y nmap-ncat && \
  dnf install -y nginx && \
  rm -f /usr/share/nginx/html/index.html
COPY files/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]