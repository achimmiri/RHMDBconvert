getinchikey<-function(getHMDB)
{
  ####getinchikey("HMDB0003357")
  url<- "https://www.metabolomicsworkbench.org/rest/compound/hmdb_id/"
  out<-tryCatch({jsonlite::fromJSON(paste0(url,getHMDB, "/all"))}, error = function(x) {return(NA)})
  #########################
  #########################
  OIK<-tryCatch({out$inchi_key},error=function(cond){return(NA)})
  ##########################
  ##########################
  return(tryCatch({OIK[1]},error=function(cond){return(NA)}))
}
