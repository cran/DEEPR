\name{DEEPR}
\alias{DEEPR}

\title{
Test two cophylogeny event count matrices
}
\description{
  This command provides a way to test for differences in event count
  profiles among two groups of reconstructed cophylogenies. 
}
\usage{DEEPR(group_1, group_2, perm_number = 999)}

\arguments{
  \item{group_1}{
  A matrix of event counts for the first group of cophylogenies. Rows
  represent individual cophylogenies. Columns represent counts for
  specific event types. 
  }
  \item{group_2}{
  A matrix of event counts for the second group of cophylogenies. Rows
  represent individual cophylogenies. Columns represent counts for
  specific event types. 
  }
  \item{perm_number}{
  The number of permutations to be performed. By default 999 permutations
  are performed.   
  }
}

\details{
  A Dirichlet-multinomial model is fit to each of the groups, such
  that the two groups can be described by their respective model
  parameters, and a Log-Likelihood Ratio Test (LLRT) can be performed
  to compare the two models. A permutation test is performed by
  repeatedly generating new groups by random sampling of the originals,
  without replacement. As with the original two groups, the LLRT
  statistic is calculated for each permutation. In doing so, a
  distribution or LLRT values is obtained and a p-value is estimated. 
}

\value{
  \item{p_value}{The p value of the test.}
  \item{group_1_pi}{Estimated event probabilities for group 1}
  \item{group_2_pi}{Estimated event probabilities for group 2}
  \item{group_1_alphas}{Estimated Dirichlet parameters for group 1}
  \item{group_2_alphas}{Estimated Dirichlet parameters for group 2}
  \item{group_1_theta}{Estimated overdispersion parameter for group 1}
  \item{group_1_theta}{Estimated overdispersion parameter for group 2}
}

\author{
  The package was written by Mark T Merilo, with contributions to
  the statistical methodology and biological considerations from
  R. Ayesha Ali, and Sarah J. Adamowicz.
}

\examples{
#Specify the cophylogeny event datasets to use
#In this example event counts are artificially generated
groupA<-simCophy(c(1,1,1,1), 20)
groupB<-simCophy(c(1,1,1,5), 20)

#Compare cophylogeny groups
#Here an extremely small permutation number is used here to shorten example run time
#A permutation number of 999 is recommended for real analysis.
DEEPR(groupA,groupB,9)

}
\keyword{coevolution}