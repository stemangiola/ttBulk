% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{test_gene_enrichment_bulk_EGSEA}
\alias{test_gene_enrichment_bulk_EGSEA}
\title{Get gene enrichment analyses using EGSEA}
\usage{
test_gene_enrichment_bulk_EGSEA(
  .data,
  .formula,
  .sample = NULL,
  .entrez,
  .abundance = NULL,
  .contrasts = NULL,
  methods,
  gene_sets,
  species,
  cores = 10
)
}
\arguments{
\item{.data}{A `tbl` (with at least three columns for sample, feature and transcript abundance) or `SummarizedExperiment` (more convenient if abstracted to tibble with library(tidySummarizedExperiment))}

\item{.formula}{A formula with no response variable, representing the desired linear model}

\item{.sample}{The name of the sample column}

\item{.entrez}{The ENTREZ code of the transcripts/genes}

\item{.abundance}{The name of the transcript/gene abundance column}

\item{.contrasts}{A character vector. See edgeR makeContrasts specification for the parameter `contrasts`. If contrasts are not present the first covariate is the one the model is tested against (e.g., ~ factor_of_interest)}

\item{methods}{A character vector. One or 3 or more methods to use in the testing (currently EGSEA errors if 2 are used). Type EGSEA::egsea.base() to see the supported GSE methods.}

\item{gene_sets}{A character vector or a list. It can take one or more of the following built-in collections as a character vector: c("h", "c1", "c2", "c3", "c4", "c5", "c6", "c7", "kegg_disease", "kegg_metabolism", "kegg_signaling"), to be used with EGSEA buildIdx. c1 is human specific. Alternatively, a list of user-supplied gene sets can be provided, to be used with EGSEA buildCustomIdx. In that case, each gene set is a character vector of Entrez IDs and the names of the list are the gene set names.}

\item{species}{A character. It can be human, mouse or rat.}

\item{cores}{An integer. The number of cores available}
}
\value{
A tibble with edgeR results
}
\description{
Get gene enrichment analyses using EGSEA
}
\keyword{internal}
