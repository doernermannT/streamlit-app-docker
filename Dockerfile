FROM registry.access.redhat.com/ubi8/ubi:8.5

WORKDIR /project

RUN yum -y update && yum -y clean all && rm -rf /var/cache

# Requirements for Centos
COPY ./pkglist.txt .
RUN xargs yum -y install < pkglist.txt

# Requirements for Python 3.7
COPY ./requirements_py38.txt .
RUN pip3 install --no-cache-dir -r  requirements_py38.txt
