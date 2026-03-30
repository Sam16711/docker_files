FROM rocker/r-ver:4.5.1
CMD ["bash"]
WORKDIR /tmp
COPY ./mosdepth /usr/bin/mosdepth
#Install library dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bcftools \
    git \
    vim \
    wget \
    gzip \
    zip \
    zlib1g \
    zlib1g-dev \
    libc6 \
    zlib1g \
    liblzo2-dev \
    libbz2-dev \
    bowtie \
    bowtie2 \
    libncurses-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    samtools \
    minimap2 \
    libxml2-dev \ 
    libglu1 \
    libglpk-dev \
    texlive \ 
    pandoc \
    python3-dev \
    m4 \
    python3-pip \
    python3-setuptools \
    libjpeg-dev \
    && apt-get clean

WORKDIR /
RUN git clone https://github.com/lh3/bwa.git && \
cd bwa; make
#RUN cd /tmp/mosdepth-0.3.12/scripts
#RUN bash /tmp/mosdepth-0.3.12/scripts/install.sh
#RUN mkdir -p ~/miniconda3
#RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
#RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
#RUN rm ~/miniconda3/miniconda.sh
#RUN . ~/miniconda3/bin/activate
#RUN ~/miniconda3/bin/conda init --all
#RUN ~/miniconda3/bin/conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
#RUN ~/miniconda3/bin/conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
#RUN ~/miniconda3/bin/conda install -c bioconda mosdepth
RUN R -e "install.packages(c('BiocManager', 'optparse', 'ggplot2', 'methods', 'readr','scales','dplyr','GenomicRanges','stringr','Biobase'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN R -e "BiocManager::install(c('QDNAseq','rtracklayer','BSgenome.Hsapiens.UCSC.hg38','DNAcopy','CGHcall'))"
RUN R -e 'remotes::install_github("asntech/QDNAseq.hg38@main")'

##############
 ## Clean up
##############
RUN cd / && \
   rm -rf /tmp/* && \
   apt-get autoremove -y && \
   apt-get autoclean -y && \
   rm -rf /var/lib/apt/lists/* && \
   apt-get clean

WORKDIR /