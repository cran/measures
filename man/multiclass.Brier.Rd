% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measures_multiclass.R
\name{multiclass.Brier}
\alias{multiclass.Brier}
\title{Multiclass Brier score}
\usage{
multiclass.Brier(probabilities, truth)
}
\arguments{
\item{probabilities}{[numeric] matrix of predicted probabilities with columnnames of the classes}

\item{truth}{vector of true values}
}
\description{
Defined as: (1/n) sum_i sum_j (y_ij - p_ij)^2, where y_ij = 1 if observation i has class j (else 0), 
and p_ij is the predicted probability of observation i for class j. 
From http://docs.lib.noaa.gov/rescue/mwr/078/mwr-078-01-0001.pdf.
}
\examples{
n = 20
set.seed(122)
truth = as.factor(sample(c(1,2,3), n, replace = TRUE))
probabilities = matrix(runif(60), 20, 3)
probabilities = probabilities/rowSums(probabilities)
colnames(probabilities) = c(1,2,3)
multiclass.Brier(probabilities, truth)
}
