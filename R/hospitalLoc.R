#' US Hospital Locations
#'
#' A dataset containing the location and rating of US hospitals, VA
#' medical centers, and military hospitals.
#'
#' @usage data("hospitalLoc")
#'
#' @format A data frame with 5314 rows and 8 variables:
#' \describe{
#'   \item{lat}{latitude of hospital location}
#'   \item{lon}{longitude of hospital location}
#'   \item{name}{hospital name}
#'   \item{type}{the type of hospital}
#'   \item{ownership}{the owner of the hospital}
#'   \item{emer_room}{whether the hospital provides emergency services}
#'   \item{stars}{the number of stars 1 - 5 that Medicare assigned to the hospital}
#'   \item{verify}{a not-so-subtle prompt to users to verify the information}
#' }
#'
#'  \insertNoCite{CMS2021}{retirementData}
#'
#' @references
#'     \insertAllCited{}
#' @examples
#' #load
#' data("hospitalLoc")
"hospitalLoc"

