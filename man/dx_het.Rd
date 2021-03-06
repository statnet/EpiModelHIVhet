% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod.dx.R
\name{dx_het}
\alias{dx_het}
\title{HIV Diagnosis Module}
\usage{
dx_het(dat, at)
}
\arguments{
\item{dat}{Master data list object of class \code{dat} containing networks,
individual-level attributes, and summary statistics.}

\item{at}{Current time step.}
}
\description{
Module function for simulating HIV diagnosis after infection,
             currently based on diagnosis at treatment initiation.
}

