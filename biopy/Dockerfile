FROM debian:buster-slim
CMD ["bash"]
WORKDIR /tmp
RUN apt-get update && \
apt-get install -y python3-dev python3-pip python3-setuptools&& \
apt-get clean && pip3 install --upgrade pip && pip install biopython
