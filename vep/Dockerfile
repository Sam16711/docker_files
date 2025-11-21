FROM ensemblorg/ensembl-vep:latest 
CMD ["bash"]
WORKDIR /tmp
USER root
RUN apt-get update && \
apt-get install -y samtools python3-dev python3-pip python3-setuptools && \
apt-get clean 
