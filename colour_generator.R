
## Generating random colour in R sometimes is a problem, when you require a palette of more than 12 colours,
# This code will help you generate as many colour you need and will return a vector
# Currently every colour is random, but I will update it based on certain colour choices as
# seen on Rcolourbrewer
library(stringr)
colour_gen <- function(){
num_colour <- as.numeric(readline('How many colour you need .. '))
if(num_colour>0){
color <- c(c(seq(0,9)),c('A','B','C','D','E','F'))
color_vector <- c()
for(i in 1:num_colour){
  color_vec <- str_trim(paste0('#',paste0(sample(color,6),collapse = '')))
  color_vector <- c(color_vector,color_vec)
}
return (color_vector)
}
}

# abc <- data.frame(id = id_vec,colour = color_vector)
# abc <- data.frame(color_vector)
# cat(paste0(abc$color_vector,collapse = ","))
# write.csv(abc,"~/Downloads/color_codes.csv",row.names=F)
