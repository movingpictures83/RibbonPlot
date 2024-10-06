## ----setup_knitr, include=FALSE, cache=FALSE-------------------------------
library(knitr)
library(DRIMSeq)
opts_chunk$set(cache = FALSE, warning = FALSE, out.width = "7cm", fig.width = 7, out.height = "7cm", fig.height = 7)
library(PasillaTranscriptExpr)
library(ggplot2)

input <- function(inputfile) {
	myD <<- readRDS(inputfile) 
}

run <- function() {}

output <- function(outputfile) {
	pdf(outputfile)
	res <- results(myD)
res <- res[order(res$pvalue, decreasing = FALSE), ]
top_gene_id <- res$gene_id[1]
plotProportions(myD, gene_id = top_gene_id, group_variable = "group", plot_type = "ribbonplot")

}

