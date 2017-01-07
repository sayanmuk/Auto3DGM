rm(list=ls())
library(auto3dgm)

Data_dir = "http://stat.duke.edu/~sayan/auto3dgm/data/meshes/teeth_dataset"
Output_dir = "/Users/sayanm/Desktop/Bones"

Levels=c(64,128)
Ids = c('001','002','003','004','005')  
Names = c('a01','a02','a03','a04','a05')


#FULL is a list of 3 returned elements.  The user gets to specify what is returned.
FULL = align_shapes(Data_dir, Output_dir, Levels, Ids, Names)


ds = FULL[[1]]  #the whole shape dataset.
ga_full=FULL[[2]]  #the global alignment 
pa=FULL[[3]] #the pairwise alignments.  

#Each of these three returned items is useful in identifying and fixing 
#misaligned shapes.  


