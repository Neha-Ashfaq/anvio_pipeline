# check conda version 
conda --version

# remove old anvio installation if exists
conda deactivate
conda remove -n anvio-9 --all -y

# installation starts here
# create new conda environment for anvio-9
conda create -y --name anvio-9 python=3.10
conda activate anvio-9
conda install -y -c conda-forge -c bioconda python=3.10 \
        sqlite=3.46 prodigal idba mcl muscle=3.8.1551 famsa hmmer diamond \
        blast megahit spades bowtie2 bwa graphviz "samtools>=1.9" \
        trimal iqtree trnascan-se fasttree vmatch r-base r-tidyverse \
        r-optparse r-stringi r-magrittr bioconductor-qvalue meme ghostscript \
        nodejs=20.12.2 llvmlite numba

# try with mamba if you get any SSL or version issues that halt you download

# try this, if it doesn't install, don't worry (it is sad, but OK):
conda install -y -c bioconda fastani

# download anvio-9 source code and install it
curl -L https://github.com/merenlab/anvio/releases/download/v9/anvio-9.tar.gz \
        --output anvio-9.tar.gz
pip install anvio-9.tar.gz

# test anvio-9 installation if installed successfully
anvi-self-test --suite mini

# run commands for databases for pangenomics
anvi-setup-scg-taxonomy
anvi-setup-ncbi-cogs
anvi-setup-kegg-data

# run test for the databases once all downloaded
anvi-self-test --suite pangenomics