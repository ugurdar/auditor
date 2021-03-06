% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_F1.R
\name{score_f1}
\alias{score_f1}
\title{F1 Score}
\usage{
score_f1(object, cutoff = 0.5, data = NULL, y = NULL, ...)
}
\arguments{
\item{object}{An object of class \code{explainer} created with function
\code{\link[DALEX]{explain}} from the DALEX package.}

\item{cutoff}{Treshold value, which divides model predicted values (y_hat) to calculate confusion matrix.
By default it's \code{0.5}.}

\item{data}{New data that will be used to calcuate the score. Pass
\code{NULL} if you want to use \code{data} from \code{object}.}

\item{y}{New y parameter will be used to calculate score.}

\item{...}{Other arguments dependent on the type of score.}
}
\value{
An object of class \code{auditor_score}.
}
\description{
F1 Score
}
\examples{
data(titanic_imputed, package = "DALEX")

# fit a model
model_glm <- glm(survived ~ ., family = binomial, data = titanic_imputed)

glm_audit <- audit(model_glm,
                   data = titanic_imputed,
                   y = titanic_imputed$survived)

# calculate score
score_f1(glm_audit)

}
