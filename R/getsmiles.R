getsmiles<-<-function(getHMDB)
{
  ####getsmiles("HMDB0003357")
  url<- "https://www.metabolomicsworkbench.org/rest/compound/hmdb_id/"
  out<-tryCatch({jsonlite::fromJSON(paste0(url,getHMDB, "/all"))}, error = function(x) {return(NA)})
  #########################
  #########################
  OSM<-tryCatch({out$smiles},error=function(cond){return(NA)})
  return(tryCatch({OSM[1]},error=function(cond){return(NA)}))
  ############################
  ############################
}
