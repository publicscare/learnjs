FROM centos:latest

COPY . ./app

# Install learn js dependencies
#
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install -y wget && \
    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y update && \
    yum install ./epel-release-latest-*.noarch.rpm && \
    yum install -y python-pip && \
    yum install -y which && \
    pip install awscli

EXPOSE 9292

#ENTRYPOINT ["./app/sspa", "server"]
