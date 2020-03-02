library("phyloseq")
library("ggplot2")
library("devtools")
library("metagMisc")
library("metagenomeSeq")

####################################################################
##                                                               ###
##            IMPORT AND SUBSET DATA                             ###
##             DATA WITH TAXA INFO                               ###
####################################################################

#Have all files in the same directory and move to that directory
setwd("~/$YourPath/")

#Import R object with biom file
Mothers_UnN_OTU <- load(file="~/Documents/ENDIA Project/Data and analyses/ENDIA Projects analysis/ENDIA_Mothers/Manuscript/Manuscript_Pregnancy_Most_Current/Metadata_Data_upload/Mothers_OTU_AFilt1_Preg.RData")
#Mothers_OTU_AFilt1_Preg

### Import tree
Phylogenetic_Tree <- read_tree("~/Documents/ENDIA Project/Data and analyses/ENDIA Projects analysis/ENDIA_Mothers/Current_Previous_Analysis_Runs_Separated/Analysis_June_on/Analysis_w7/Mother_All-Runs_Merged_tree.nwk")

### Making a phyloseq object that includes phylogenetic tree 
Mother_FT_Com <- phyloseq(otu_table(Mothers_OTU_AFilt1_Preg),  sample_data(Mothers_OTU_AFilt1_Preg), tax_table(Mothers_OTU_AFilt1_Preg), phy_tree(Phylogenetic_Tree))

#phyloseq-class experiment-level object
#otu_table()   OTU Table:         [ 3772 taxa and 354 samples ]
#sample_data() Sample Data:       [ 354 samples by 94 sample variables ]
#tax_table()   Taxonomy Table:    [ 3772 taxa by 7 taxonomic ranks ]
#phy_tree()    Phylogenetic Tree: [ 3772 tips and 3731 internal nodes ]

#############################################################
##                                                        ###
##                  OTUs FROM FEATURES                    ###
##                                                        ###
#############################################################

# tip_glom: Can be used to create a non-trivial OTU Table, if a phylogenetic tree is available. It is use as a means to merge taxa in our dataset that are closely related. 
# In this case, we specify a threshold patristic distance. Taxa more closely related than this threshold are merged. This is especially useful when a dataset has many taxa 
# that lack a taxonomic assignment at the level you want to investigate
# tip_glom agglomerates OTUs at a given height in the tree. All tips of the tree separated by a cophenetic distance smaller than h will be agglomerated into one taxa using merge_taxa.

Mother_FT_OTUF <- tip_glom(Mother_FT_Com, h = 0.03)
## Staying only with OTUs that have at least one sequence
Mother_OTU <-prune_taxa(taxa_sums(Mother_FT_OTUF)>=1, Mother_FT_OTUF)

####################################################################
##                                                               ###
##                  ABUNDANCE FILTER                             ###
##                                                               ###
####################################################################

Mother_OTU_dataframe <- as.data.frame(otu_table(Mother_OTU))

# function to perform pre-filtering
low.count.removal = function(data, percent=0.01)
{
  keep.otu = which(colSums(data)*100/(sum(colSums(data))) > percent)
  data.filter = data[,keep.otu]
  return(list(data.filter = data.filter, keep.otu = keep.otu))
}

result.filter = low.count.removal(t(Mother_OTU_dataframe), percent=0.01)
length(result.filter$keep.otu) 
Keep_OTUS <- names(result.filter$keep.otu)

Mothers_OTU_AFilt1 <- prune_taxa(Keep_OTUS, Mother_OTU)

Mothers_OTU_AFilt1

#phyloseq-class experiment-level object
#otu_table()   OTU Table:         [ 349 taxa and 354 samples ]
#sample_data() Sample Data:       [ 354 samples by 94 sample variables ]
#tax_table()   Taxonomy Table:    [ 349 taxa by 7 taxonomic ranks ]
#phy_tree()    Phylogenetic Tree: [ 349 tips and 348 internal nodes ]

#save(Mothers_OTU_AFilt1, file="~/Documents/ENDIA Project/Data and analyses/ENDIA Projects analysis/ENDIA_Mothers/Manuscript/Manuscript_Pregnancy_Most_Current/Metadata_Data_upload/Mothers_OTU_Phyloseq_Obj_Filter1_w7G.RData")


