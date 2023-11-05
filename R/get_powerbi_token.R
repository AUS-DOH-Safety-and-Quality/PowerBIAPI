#' Generate an Azure authentication token for use with PowerBI
#'
#' @param tenant_id Your organisation's tenant identifier, defaults to 'common'
#' @param application_id The application identifier with access to PowerBI,
#' defaults to '1950a258-227b-4e31-a9cf-717495945fc2' (Azure PowerShell Modules)
#' @param resource_id The URL/GUID of the target resource, defaults to 'https://analysis.windows.net/powerbi/api'
#' @param ... Additional arguments to be passed to [AzureAuth::get_azure_token()], #nolint
#' such as 'use_cache' or 'auth_type'
#'
#' @return An Azure token to authenticate connections.
#' @export
get_powerbi_token <- function(
    tenant_id = getOption("powerbi.tenant_id", "common"),
    application_id = getOption("powerbi.application_id", "1950a258-227b-4e31-a9cf-717495945fc2"),
    resource_id = getOption("powerbi.tenant_id", "https://analysis.windows.net/powerbi/api"),
    ...) {
  token <- AzureAuth::get_azure_token(
    resource = resource_id,
    tenant = tenant_id,
    app = application_id,
    ...
  )
  token$refresh()

  return(token)
}

