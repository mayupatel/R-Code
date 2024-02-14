
#Import the R Packages
library(StructuralVariantAnnotation)

#Set the directory path
in_dir <- "B:/haven/Group_Projects/SV_Validation_Working_Group/Truth_Files/SEQC_HCC1395-HCC1395BL"

#read the bedpe file
bedpe <- file.path(in_dir, "HCC1395_HighConfidence_TalsaniaEtAl.bedpe")

# Load BEDPE and convert to Breakpoint GRanges object
bedpe_pairs <- rtracklayer::import(bedpe)
bedpe_bpgr <- pairs2breakpointgr(bedpe_pairs)

# Write to VCF
breakpointGRangesToVCF(bedpe_bpgr, file.path(in_dir, "HCC1395_HighConfidence_TalsaniaEtAl_r.vcf"))
