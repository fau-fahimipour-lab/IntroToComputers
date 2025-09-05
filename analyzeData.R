## A core analysis script called analyzeData.R

## Draw a random number
randNum = runif(2)

## Create a data frame with two columns
myData = data.frame(first = randNum[1], second = randNum[2])

## Create a unique output file name
outputFile = paste0("data_", format(Sys.time(), "%Y%m%d_%H%M%S_"), ".txt")

# Write the data frame to a text file
write.table(myData, outputFile, row.names = FALSE, col.names = FALSE)

cat(paste("Generated file:", outputFile, "\n"))
