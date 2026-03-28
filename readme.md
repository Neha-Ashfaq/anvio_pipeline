# Pangenome Analysis of Fusobacterium Genus using Anvi’o

## 📌 Overview

This project performs a pangenome analysis of selected species from the genus Fusobacterium using the Anvi’o platform. The aim is to explore genomic diversity, identify core and accessory gene clusters, and understand evolutionary relationships across species.

The analysis includes four complete genomes representing different species within the genus.

---

## 🧬 Dataset

The genomes used in this study were obtained from NCBI:

1. Fusobacterium nucleatum subsp. nucleatum ATCC 25586
   https://www.ncbi.nlm.nih.gov/nuccore/1370531809

2. Fusobacterium ulcerans strain ATCC 49185
   https://www.ncbi.nlm.nih.gov/nuccore/1370545701

3. Fusobacterium gonidiaformans ATCC 25563
   https://www.ncbi.nlm.nih.gov/nuccore/1370530246

4. Fusobacterium necrophorum subsp. funduliforme strain F1260
   https://www.ncbi.nlm.nih.gov/nuccore/1515570650

These genomes represent different species within the Fusobacterium genus and were selected to investigate inter-species genomic variation.

---

## ⚙️ Installation

Anvi’o was installed on a Linux system using the provided installation script:

```bash
bash installation.sh
```

For official installation instructions, refer to:
https://anvio.org/install/

---

## 🚀 Running the Pipeline

The complete pangenome workflow is executed using:

```bash
bash script.sh
```

### The pipeline includes:

* Genome preparation and formatting
* Contigs database generation
* Functional annotation
* Genome storage creation
* Pangenome analysis
* Clustering of gene families
* Visualization setup

---

## 📊 Results

The analysis generates:

* Pangenome gene cluster matrix
* Identification of core, shell, and accessory genomes
* Comparative genomic profiles across species

### Key Concepts:

* **Core genome**: Genes present in all species
* **Accessory genome**: Genes present in some but not all species
* **Singleton genes**: Unique genes found in only one genome

The results highlight genomic diversity across Fusobacterium species and provide insights into shared and species-specific functions.

---

## 📈 Visualization

Interactive visualization is performed using Anvi’o:

```bash
anvi-display-pan
```

This allows exploration of:

* Gene cluster distribution
* Genome relationships
* Functional annotations

---

## 📁 Project Structure

```
├── installation.sh     # Script to install Anvi’o
├── script.sh           # Pipeline execution script
├── data/               # Input genome files
├── output/             # Results and analysis outputs
```

---

## 🔗 Resources

* Anvi’o GitHub Repository: https://github.com/merenlab/anvio
* Anvi’o Documentation: https://anvio.org

---

## 📚 References

Eren AM et al. (2015).
Anvi’o: an advanced analysis and visualization platform for 'omics data.

---

## ⚠️ Notes

* This study performs **genus-level pangenome analysis**, which may result in higher genomic diversity compared to species-level analysis.
* Ensure consistent annotation and quality of genomes for accurate clustering results.
* All working codes should be inside the folder where your fasta files are or else there will be pathway issues. 

---
