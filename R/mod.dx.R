
#' @title HIV Diagnosis Module
#'
#' @description Module function for simulating HIV diagnosis after infection,
#'              currently based on diagnosis at treatment initiation.
#'
#' @inheritParams aging.hiv
#'
#' @export
#'
dx.hiv <- function(dat, at) {

  # Variables ---------------------------------------------------------------
  active <- dat$attr$active
  status <- dat$attr$status
  txCD4min <- dat$attr$txCD4min
  cd4Count <- dat$attr$cd4Count
  dxStat <- dat$attr$dxStat

  # Process -----------------------------------------------------------------
  tested <- which(active == 1 & status == "i" & dxStat == 0 & cd4Count <= txCD4min)


  # Results -----------------------------------------------------------------
  if (length(tested) > 0) {
    dat$attr$dxStat[tested] <- 1
    dat$attr$txStat[tested] <- 0
    dat$attr$dxTime[tested] <- at
  }

  return(dat)
}