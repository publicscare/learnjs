FROM centos:latest

COPY . ./app

# Install learn js dependencies
#
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum -y update && \
    yum install -y python-pip && \
    yum install -y which && \
    pip install --upgrade pip && \
    pip install awscli

EXPOSE 9292

#ENTRYPOINT ["./app/sspa", "server"]
