\name{simCophy}
\alias{simCophy}

\title{
Generate simulated cophylogeny event counts
}
\description{
  This command provides a way to generate simulated matrices
  representing sets of cophylogeny event counts.
}
\usage{simCophy(group_alphas = c(1,1,1,1), cophy_number = 20, mean_event_count = 33)}

\arguments{
  \item{group_alphas}{Set of Dirichlet alpha parameter for cophylogeny group}
  \item{cophy_number}{Number of simulated cophylogeny event profiles to be generated in the group}
  \item{mean_event_count}{The expected number of total event counts per simulated cophylogeny}
}

\details{
  From specified Dirichlet parameters, a set of multinomial
  probabilities are generated. A total number of co-evolutionary
  events are generated from a Poisson distribution in order to
  introduce variation in the number of events per cophylogeny.
  These events are then distributed among the sets of 
  multinomial probabilities previously generated. 

}

\value{
  \item{group_events}{A matrix of cophylogeny event counts.  Each row represents a single reconstructed cophylogeny and each column represents specific event type counts.}
}

\author{Mark T Merilo <mmerilo@uoguelph.ca>}

\examples{

#Generate a simulated event count set with specified Dirichlet parameters
#and desired number of simulated cophylogenies
simCophy(c(1,1,1,5), 20)

}
\keyword{coevolution}