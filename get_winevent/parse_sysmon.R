
## Parse Sysmon JSON log file

library(jsonlite)
library(tidyverse)

# get data ----------------------------------------------------------------

logfile <- fromJSON("log.json")

loglst <- str_split(logfile$Message, pattern = "\r\n")

gsub("(^ProcessGuid: )(.*)", "\\2", loglst[[1]][4])

# Add ProcessGuid column --------------------------------------------------

n <- 1
logfile$ProcessGuid <- ""
newcolnum <- dim(logfile)[2]
i <- which(grepl("^ProcessGuid", loglst[[1]]))
while(n <= length(loglst)) {
  logfile[n,newcolnum] <- gsub("(^ProcessGuid: )(.*)", "\\2", loglst[[n]][i])
  n <- n + 1
}

# Add ProcessId column ----------------------------------------------------

n <- 1
logfile$ProcessId <- ""
newcolnum <- dim(logfile)[2]
i <- which(grepl("^ProcessId", loglst[[1]]))
while(n <= length(loglst)) {
  logfile[n,newcolnum] <- gsub("(^ProcessId: )(.*)", "\\2", loglst[[n]][i])
  n <- n + 1
}

# regex parse -------------------------------------------------------------

nm <- c("RuleName",
        "UtcTime",
        "ProcessGuid",
        "ProcessId",
        "Image")

re <- str_c("^[^:]+:\\s",
            "[^:]+:\\s([\\S]+)\\s",   # RuleName
            "[^:]+:\\s([\\d\\-]+\\s[\\d:\\.]+)\\s",
            "[^:]+:\\s([^}]+})\\s",   # ProcessGuid
            "[^:]+:\\s([\\d]+)\\s",   # ProcessId
            "[^:]+:\\s([\\w\\ :\\\\\\.]+)\\s",  # Image
            "")

lg <- extract(logfile, Message, nm, re)



# writeLines(logfile$Message, "message.txt")




