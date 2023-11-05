
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PowerBIAPI

<!-- badges: start -->

[![R-CMD-check](https://github.com/AUS-DOH-Safety-and-Quality/PowerBIAPI/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/AUS-DOH-Safety-and-Quality/PowerBIAPI/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The PowerBIAPI package provides a native R interface to the PowerBI REST
and XMLA APIs for accessing Dataflows and Datasets. No external
dependencies (e.g., PowerShell or the XMLA client libraries) are
required.

## Installation

You can install the development version of PowerBIAPI like so:

``` r
devtools::install_github("AUS-DOH-Safety-and-Quality/PowerBIAPI")
```

## Downloading Dataflow Tables

``` r
df_table <- get_dataflow_table(workspace = "Workspace Name",
                               dataflow = "Dataflow Name",
                               table = "Table Name")
```

## Downloading Dataset Tables

``` r
# XMLA API
ds_table_xmla <- get_dataset_table(workspace = "Workspace Name",
                                    dataset = "Dataset Name",
                                    table = "Table Name",
                                    method = "XMLA")

# REST API
ds_table_rest <- get_dataset_table(workspace = "Workspace Name",
                                    dataset = "Dataset Name",
                                    table = "Table Name",
                                    method = "REST")
```

## Executing DAX Queries

``` r
# XMLA API
dax_result_xmla <- execute_xmla_query(workspace = "Workspace Name",
                                      dataset = "Dataset Name",
                                      query = "Custom DAX query")

# REST API
dax_result_rest <- execute_rest_query(workspace = "Workspace Name",
                                      dataset = "Dataset Name",
                                      query = "Custom DAX query")
```

## Authentication

`PowerBIAPI` uses the `AzureAuth` package for managing the
authentication to PowerBI. By default, the functions will authenticate
using either the permission level for the Azure PowerShell Modules (for
dataflow table downloads) or the PowerBI PowerShell Modules (for dataset
table downloads).

To change the authentication defaults, simply use the
`get_powerbi_token()` function to create a new `AzureAuth` object to
pass to the functions.

For example, to use a Service Principal for authentication, first create
the token object using the principal details and use that with the
respective method:

``` r
powerbi_token <- get_powerbi_token(
  tenant_id = "",
  application_id = "",
  password = ""
)

ds_table <- get_dataset_table(workspace = "Workspace Name",
                               dataset = "Dataset Name",
                               table = "Table Name",
                               powerbi_token = powerbi_token)
```
