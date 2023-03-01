getFormula<-function(getHMDB)
{
   #####getFormula("HMDB0003357")	
  url<- "https://www.metabolomicsworkbench.org/rest/compound/hmdb_id/"
  out<-tryCatch({jsonlite::fromJSON(paste0(url,getHMDB, "/all"))}, error = function(x) {return(NA)})
  #########################
  #########################
  OFOR<-tryCatch({out$formula},error=function(cond){return(NA)})
  return(tryCatch({OFOR[1]},error=function(cond){return(NA)}))
  ############################
  ############################
}

