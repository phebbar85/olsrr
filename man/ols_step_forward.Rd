% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ols-stepwise-forward-regression.R
\name{ols_step_forward}
\alias{ols_step_forward}
\alias{plot.ols_step_forward}
\title{Stepwise Forward Regression}
\usage{
ols_step_forward(model, ...)

\method{plot}{ols_step_forward}(x, model = NA, ...)
}
\arguments{
\item{model}{an object of class \code{lm}; the model should include all candidate predictor variables}

\item{...}{other arguments}

\item{x}{an object of class \code{ols_step_forward}}
}
\value{
\code{ols_step_forward} returns an object of class \code{"ols_step_forward"}.
An object of class \code{"ols_step_forward"} is a list containing the
following components:

\item{steps}{f statistic}
\item{predictors}{p value of \code{score}}
\item{rsquare}{degrees of freedom}
\item{aic}{fitted values of the regression model}
\item{sbc}{name of explanatory variables of fitted regression model}
\item{sbic}{response variable}
\item{adjr}{predictors}
\item{rmse}{predictors}
\item{mallows_cp}{predictors}
\item{indvar}{predictors}
}
\description{
Build regression model from a set of candidate predictor variables by entering predictors based on 
p values, in a stepwise manner until there is no variable left to enter any more.
}
\examples{
# stepwise forward regression
model <- lm(y ~ ., data = surgical)
ols_step_forward(model)

# stepwise forward regression plot
model <- lm(y ~ ., data = surgical)
k <- ols_step_forward(model)
plot(k)

}
\references{
Chatterjee, Samprit and Hadi, Ali. Regression Analysis by Example. 5th ed. N.p.: John Wiley & Sons, 2012. Print.

Kutner, MH, Nachtscheim CJ, Neter J and Li W., 2004, Applied Linear Statistical Models (5th edition). 
Chicago, IL., McGraw Hill/Irwin.
}

