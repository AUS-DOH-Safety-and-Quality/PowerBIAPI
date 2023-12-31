% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataflows.R
\name{get_dataflow_table}
\alias{get_dataflow_table}
\title{Download a specified dataflow table into R}
\usage{
get_dataflow_table(
  workspace,
  dataflow,
  table,
  powerbi_token = get_powerbi_token()
)
}
\arguments{
\item{workspace}{Name of the workspace containing dataflow}

\item{dataflow}{Name of the dataflow containing tables}

\item{table}{Name of the table to download}

\item{powerbi_token}{AzureAuth token object generated by \code{get_powerbi_token()}}
}
\value{
DataFrame containing downloaded table
}
\description{
Download a specified dataflow table into R
}
