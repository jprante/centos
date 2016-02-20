FROM scratch
MAINTAINER Jörg Prante <joergprante@gmail.com>
ADD centos-7-x86_64-de.tar.xz /
RUN yum -y update && \
    yum -y install epel-release && \
    yum clean all
ENV TZ "Europe/Berlin"
ENV LC_ALL de_DE.utf-8
CMD ["/bin/bash"]
