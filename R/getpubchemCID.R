getpubchemCID<-<-function(getHMDB)
{
  ####getpubchemCID("HMDB0003357")
  url<- "https://www.metabolomicsworkbench.org/rest/compound/hmdb_id/"
  out<-tryCatch({jsonlite::fromJSON(paste0(url,getHMDB, "/all"))}, error = function(x) {return(NA)})
  #########################
  #########################
  OCID<-tryCatch({out$pubchem_cid},error=function(cond){return(NA)})
  return(tryCatch({OCID[1]},error=function(cond){return(NA)}))
  ############################
  ############################
}

