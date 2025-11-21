FROM conda/miniconda3:latest
WORKDIR /

RUN conda install -c bioconda longshot==v0.3.5
RUN conda install -c plotly plotly-orca
#RUN R -e "install.packages(c('BiocManager', 'optparse', 'ggplot2', 'methods', 'magrittr', 'swne', 'fs', 'DT', 'gridExtra', 'Seurat', 'heatmap3', 'installr', 'reshape', 'tidyr', 'tidyverse', 'rmarkdown', 'RColorBrewer', 'plotly', 'msigdbr','ggrepel', 'directlabels', 'DT', 'karyoploteR', 'flexdashboard', 'heatmaply', 'statmod'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

#RUN R -e "BiocManager::install(c('Limma', 'edgeR', 'ChIPseeker', 'soGGi', 'rGREAT', 'Rsamtools', 'rtracklayer', 'MotifDb', 'tracktables', 'Biostrings', 'Rsubread', 'tximport', 'ChIPQC', 'EBSeq', 'blockmodeling', 'digest', 'DESeq2', 'biomaRt', 'gage', 'pathview', 'affy', 'sva', 'rgl', 'clusterProfiler', 'WGCNA', 'GenomicAlignments', 'GenomicRanges', 'org.Hs.eg.db', 'org.Mm.eg.db', 'TxDb.Hsapiens.UCSC.hg38.knownGene'))"

##############
 ## Clean up
##############
#RUN cd / && \
#   rm -rf /tmp/* && \
#   apt-get autoremove -y && \
#   apt-get autoclean -y && \
#   rm -rf /var/lib/apt/lists/* && \
#   apt-get clean

WORKDIR /