# RothSchulze_pregnancy-gut-microbiome-T1D

The R Markdowns and R objets found here can be used to reproduce the analysis performed in the article titled "Type 1 diabetes in pregnancy is associated with distinct changes in the composition and function of the gut microbiome"

### *Details on content of each file used to perform analysis of the whole metagenomics sequencing data:*

**Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd**: R markdown script with all the code used to analyse alpha and beta diversity of the taxonomy and functional metagenomics data.

**Metagenomics_Alpha_and_Beta_diversity_analysis.html**: Knitted html document corresponding to Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd with the complete analysis of the metagenomic alpha and beta diversity for taxonomic and functional data.

**Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd**: R markdown script with all the code used to analyse differential abundance of the taxonomy and functional metagenomics data and differences in pathogenicity marker concentrations between women with and without T1D. 

**Metagenomics_DA_analysis_and_pathogenicity_markers.html**: Knitted html document corresponding to Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd.

*To view this file copy the complete address (https://github.com/PapenfussLab/RothSchulze_pregnancy-gut-microbiome-T1D/blob/master/Metagenomics_DA_analysis_and_pathogenicity_markers.html), go to https://htmlpreview.github.io/ paste and click enter.*

**Strain_level_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which taxonomic analyses where performed at the strain taxonomic level.

**Species_level_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which taxonomic analyses where performed at the species taxonomic level.

**Genus_level_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which taxonomic analyses where performed at the genus taxonomic level.

**Family_level_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which taxonomic analyses where performed at the family taxonomic level.

**Order_level_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which taxonomic analyses where performed at the order taxonomic level.

**Phylum_level_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which taxonomic analyses where performed at the phylum taxonomic level.

**Pathways_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which functional analyses where performed for pathways.

**KEGG_Orthology_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which functional analyses where performed for Kegg orthology functional categories.

**MetaCyc_reactions_phyloseq_object.RData**: Contains the input for the markdown Metagenomics_Alpha_and_Beta_diversity_analysis.Rmd and Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd in which functional analyses where performed for MetaCyc reactions.

In addition, csv files containing concentrations of Calprotectin and I-FABP as well as a file containing the results from qPCR are included to be analysed within Markdown Metagenomics_DA_analysis_and_pathogenicity_markers.Rmd:

**Calprotectin_measurements.csv**

**iFABP_measurements.csv**

**qPCR_data.csv**

