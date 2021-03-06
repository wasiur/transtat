% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transph.R
\name{summary.transph}
\alias{summary.transph}
\title{Summary of fitted transph model}
\usage{
\method{summary}{transph}(creg, level = 0.95, type = "wald",
  cdigits = 4, pdigits = 3)
}
\arguments{
\item{creg}{An object of class \code{transph}.}

\item{level}{The confidence level (1 - \eqn{alpha}).}

\item{type}{The type of confidence intervals and p-values. Options are 
\code{wald} for Wald and \code{lr} for likelihood ratio. This argument is 
passed to the \code{confint} and \code{pval} methods. Likelihood ratio 
confidence intervals and p-values are available only when who-infected-whom 
is completely  observed.}
}
\value{
A list of class \code{transph_summary} with the following 
 components:
 \describe{
   \item{\code{call}}{The call to \code{transph} with complete formal 
     arguments.}
   \item{\code{iter}}{The number of iterations used to fit \code{creg}.}
   \item{\code{loglik}}{The \code{loglik} element of the \code{transph} 
     object.}
   \item{\code{lrt}}{A list containing the results of the global 
     likelihood ratio test: \code{D} is the deviance, \code{df} is the
     degrees of freedom, \code{loglik} is the maximum log likelihood, 
     \code{loglik_null} is the null log likelihood, and \code{p} is the 
     p-value.}
   \item{\code{nevent}}{The number of transmissions in the data used to fit 
     \code{creg}.}
   \item{\code{table}}{The coefficient table. Each row corresponds to an 
     estimated parameter. The first column has point estimates, the second 
     and third columns have confidence limits, and the last column has 
     p-values.}
   \item{\code{type}}{String giving the method used to calculate 
     p-values and confidence intervals.}
 }
}
\description{
Produces a summary of a fitted \code{transreg} model. The confidence level
and method for p-values and confidence intervals can be specified.
}
\author{
Eben Kenah \email{kenah.1@osu.edu}
}
