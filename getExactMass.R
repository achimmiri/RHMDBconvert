getExactMass<-function(getHMDB)
{
  url<- "https://www.metabolomicsworkbench.org/rest/compound/hmdb_id/"
  out<-tryCatch({jsonlite::fromJSON(paste0(url,getHMDB, "/all"))}, error = function(x) {return(NA)})
  #########################
  #########################
  OEM<-tryCatch({out$exactmass},error=function(cond){return(NA)})
  return(tryCatch({OEM[1]},error=function(cond){return(NA)}))
  ############################
  ############################
}
