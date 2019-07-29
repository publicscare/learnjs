FROM centos:latest

COPY . ./app

# Install learn js dependencies
#
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum -y update && \
    yum install -y python36u python36u-libs python36u-devel python36u-pip && \
    yum install -y which && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    update-alternatives --install /usr/bin/python python /usr/bin/python2 50 && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.6 60 && \
    python get-pip.py && \
    pip install awscli

EXPOSE 9292

#ENTRYPOINT ["./app/sspa", "server"]
