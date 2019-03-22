filenames <- list.files(path = "F:/UBIT/8th Semester/FYP/Data Set/Test")
d<-do.call("rbind", lapply(filenames, read.csv, header = TRUE))

