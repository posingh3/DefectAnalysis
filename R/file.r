
file <- function() {
	load("C://Users//posingh3//Desktop//419//myfile1.RData")
	base = "C:\\Users\\posingh3\\Desktop\\419\\Test\\Test"
	exact = list.files("C:\\Users\\posingh3\\Desktop\\419\\Test\\Test")

	file = sprintf("%s\\%s",base,exact)

	a = readLines(file)
	left = paste(a, collapse = " ")
	 
	left_split = unlist(strsplit(left,split = " "))
	 
	base1 = "C:\\Users\\posingh3\\Desktop\\419\\Folder"
	temp = knn.pred[1]
	exact1 = as.character(temp)

	 max = 0
	 k = 1
	 
	 location = sprintf("%s\\%s",base1,exact1)
	 setwd(location)
	 
	 files = list.files(pattern="*.txt")
	 
	 val = matrix(0,nrow = 1, ncol = length(files))
	 ind = matrix(0,nrow = 1, ncol = length(files))
	 
	 for(i in files){
	   temp1 = readLines(i)
	   right = paste(temp1, collpase = " ")
	   right_split = unlist(strsplit(right,split = " "))
	   ind[k] = k
	   val[k] = length(intersect(left_split,right_split))
	   k = k+1
	 }
	 val1 = rbind(ind,val)
	 val2 = val1[,order(-val)]
	 
	  list(
    message = paste(files[val2[1,1]],"\n",files[val2[1,2]],"\n",files[val2[1,3]],"\n",files[val2[1,4]],"\n",files[val2[1,5]])
  )
}
