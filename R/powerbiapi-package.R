#' The PowerBIAPI package.
#'
#' @description An R interface to REST APIs for PowerBI Dataflows and Datasets
#'
#' @docType package
#' @name PowerBIAPI-package
#' @aliases PowerBIAPI
#'
#' @importFrom AzureAuth get_azure_token
#' @importFrom httr add_headers GET POST content_type_json content
#' @importFrom purrr map_dfr pmap keep map_chr
#' @importFrom readr read_csv
#' @importFrom glue glue
#' @importFrom jsonlite toJSON
#' @importFrom uuid UUIDgenerate
#' @importFrom xml2 xml_find_all xml_children xml_attr xml_name xml_text
#'
NULL
