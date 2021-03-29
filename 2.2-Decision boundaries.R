#####################
# Decision boundaries
#####################

library(lattice)
xyplot(temp ~ humid , data = dengue, groups = NoYes,
       panel=function(...){
         panel.xyplot(...)
         # panel.abline(intercept, slope)
         panel.grid(...)
       })