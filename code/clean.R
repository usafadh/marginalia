# code below assumes that the text is available as a series of files, where
# each paragraph is a separate file.
# a simple way of producing these files from a single long multi-paragraph file
# uses the readr and stringr packages: 
# 1. load the file into memory (yourFile <- read_lines(fileOnYourHardDrive)
# 2. for(i in 1:length(yourFile)){write_lines(yourFile[i], str_c("para", i, ".txt"))}
# the above steps will produce a sequence of files that will be named "para1.txt". 
# "para2.txt", etc.


# clean text files
# work with them as strings, each string is a paragraph is a separate file
# procedure after opening file is
# 1. remove hyphens (stringr::str_replace)
# 2. lowercase (stringr::str_to_lower)
# 3. remove stopwords (tm::removeWords)
# 4. remove punctuation (tm::removePunctuation)
# 4. stem (tm::stemDocument)
# save cleaned file

cleanText <-function(fileName){
  #load libraries
  
  require(stringr)
  require(tm)
  require(readr)
  
  #load file 
  fileToClean <- read_lines(fileName)
  
  #cleaning process -- replace double hyphens with space
  cleanedText <-str_replace_all(fileToClean, "--", " ")
  #transform to lower case
  cleanedText <-tolower(cleanedText)
  #remove stopwords
  cleanedText <- removeWords(cleanedText, stopwords())
  #remove punctuation
  cleanedText <- removePunctuation(cleanedText)
  #remove numbers
  cleanedText <- removeNumbers(cleanedText)
  #stem
  cleanedText <- stemDocument(cleanedText)
  #save file in place
  write_lines(cleanedText, fileName)
}

# CleanAllText iterates through all .txt files in a directory and
# calls CleanText for each of them.
# directory arguement is relative to current working directory
cleanAllText <- function(directory){
  #save current working directory
  currentwd <- getwd()
  #set working directoy to directory var
  setwd(paste(getwd(), '/', directory, sep = ""))
  #load all file names from directory into vector
  filelist <- list.files(path = getwd(), pattern = "*.txt")
  
  #iterate through vector, sending each filename to cleanText
  for(i in 1:length(filelist)){cleanText(filelist[i])}
  #reset current directory
  setwd(currentwd)
}
