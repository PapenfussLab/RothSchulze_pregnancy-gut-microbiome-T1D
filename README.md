# RothSchulze_pregnancy-microbiome-T1D

### The R Markdowns and R objets found here can be used to reproduce the analysis performed in the article titled "Distinct changes in the composition and function of the gut microbiome accompany type 1 diabetes in pregnancy"

####***Details on content of each file used to perform analysis of the whole metagenomics sequencing data:***

**Analysis_metagenomics_dataset_upload.Rmd:** R markdown script with all the code used to analyse the taxonomy and functional metagenomics data.

**Analysis_metagenomics_dataset_uploadG.html:** Knitted html document corresponding to Analysis_metagenomics_dataset_upload.Rmd with the complete analysis of the metagenomic taxonomic and functional data.  

**Mothers_Metagenomics_Strain.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which taxonomic analyses where performed at the strain taxonomic level.

**Mothers_Metagenomics_Species.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which taxonomic analyses where performed at the species taxonomic level.

**Mothers_Metagenomics_Genus.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which taxonomic analyses where performed at the genus taxonomic level.

**Mothers_Metagenomics_Family.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which taxonomic analyses where performed at the family taxonomic level.

**Mothers_Metagenomics_Order.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which taxonomic analyses where performed at the order taxonomic level.

**Mothers_Metagenomics_Phylum.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which taxonomic analyses where performed at the phylum taxonomic level.

**Mothers_Metagenomics_Functions_Pathways.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which functional analyses where performed for pathways.

**Mothers_Metagenomics_Functions_KO.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which functional analyses where performed for Kegg orthology functional categories.

**Mothers_Metagenomics_Functions_MetaCyc.RData:** Contains the input for the markdown *Analysis_metagenomics_dataset_upload.Rmd* in which functional analyses where performed for MetaCyc reactions.


####***Details on content of each file used to perform analysis of the 16S rRNA amplicon sequencing data:***

**Phyloseq_Mother_data_formating_16S.R:** R script used to make OTUs from features (16S rRNA data) and filter data by abundance.

**Analysis_16S_dataset_upload.Rmd:** R markdown script with the code used to analyse the taxonomy 16S rRNA amplicon data.

**Analysis_16S_dataset_uploadG.html:** Knitted html document corresponding to Analysis_16S_dataset_upload.Rmd with the complete analysis of the 16S rRNA amplicon data.

**Mothers_OTU_AFilt1_Preg.RData:** Contains the input for the R script *Phyloseq_Mother_data_formating_16S.R:* in which I convert features into OTUs for the 16S data.

**Mothers_OTU_Phyloseq_Obj_Filter1_16S.RData:** Contains the input for the markdown *Analysis_16S_dataset_upload.Rmd:* in which all the analyses where performed for the 16S data.





