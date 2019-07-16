# takes file name as input, makes each word in file a separate line

require(readr)
require(stringr)

formatInputFile <- function(fileName){
  require(readr)
  require(stringr)
  theFileText <- read_lines(fileName)
  theFileText <- str_split(theFileText, " ")
  write_lines(theFileText[[1]], fileName)
}


# applies formatInputFile to all files in working directory
FormatAllInputFiles <- function(){
  fileList <- list.files(".")
}
