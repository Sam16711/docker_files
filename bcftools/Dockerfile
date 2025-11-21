FROM staphb/bcftools:1.13
CMD ["bash"]
WORKDIR /tmp
USER root
RUN apt-get update && \
apt-get install -y tabix python3-dev python3-pip python3-setuptools && \
apt-get clean 
