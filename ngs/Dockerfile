FROM debian:buster-slim
CMD ["bash"]
WORKDIR /tmp
COPY pear-0.9.11-linux-x86_64.tar.gz /tmp
RUN apt-get update && \
apt-get install -y git wget perl gzip bzip2 zlib1g-dev unzip python3-dev m4 python3-pip python3-setuptools libjpeg-dev && \
apt-get clean && pip3 install --upgrade pip && pip install matplotlib pandas numpy && \
tar -xzf pear-0.9.11-linux-x86_64.tar.gz && \
rm pear-0.9.11-linux-x86_64.tar.gz && \
mv /tmp/pear-0.9.11-linux-x86_64/bin/pear /usr/bin
