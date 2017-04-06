library(spatstat)

# Load points
points <- read.csv('/home/jlevente/gisdata/crossk/data.csv',as.is=T)

generate_crossk <- function(x,y,codes) {

  rc <- seq(0, 10, 0.05)
  
  mm <- ppp(x, y, c(-10, 10), c(-10, 10), marks=codes) #
  mm2 <- cut(mm, breaks=2, labels=c("A","B"))
  
  kcross <- Kcross(mm2, i="A",j="B",r=rc, correction='none') 
  kmult <- envelope(mm2, fun=Kcross, nsim=100, i="A", j="B", r=rc, correction='none', simulate=expression(rlabel(mm2)))

  #  plot(kmult,main="Cross-K function")
  return(list(kcross, kmult))
  
}

# Calculate cross-K and relabel for different point patterns
res_1 <- generate_crossk(points$x_1, points$y_1, codes=points$type)
res_2 <- generate_crossk(points$x_2, points$y_2, codes=points$type)
res_3 <- generate_crossk(points$x_3, points$y_3, codes=points$type)
res_4 <- generate_crossk(points$x_4, points$y_4, codes=points$type)

# Save output
out <- data.frame(r=res_1[[1]]$r)
out['theoretical'] <- res_1[[1]]$theo

out['observed_1'] <- res_1[[1]]$un # or res_1[[2]]$obs
out['simulation_mean_1'] <- res_1[[2]]$mmean
out['simulation_low_1'] <- res_1[[2]]$lo
out['simulation_high_1'] <- res_1[[2]]$hi

out['observed_2'] <- res_2[[1]]$un # or res_1[[2]]$obs
out['simulation_mean_2'] <- res_2[[2]]$mmean
out['simulation_low_2'] <- res_2[[2]]$lo
out['simulation_high_2'] <- res_2[[2]]$hi

out['observed_3'] <- res_3[[1]]$un # or res_1[[2]]$obs
out['simulation_mean_3'] <- res_3[[2]]$mmean
out['simulation_low_3'] <- res_3[[2]]$lo
out['simulation_high_3'] <- res_3[[2]]$hi

out['observed_4'] <- res_4[[1]]$un # or res_1[[2]]$obs
out['simulation_mean_4'] <- res_4[[2]]$mmean
out['simulation_low_4'] <- res_4[[2]]$lo
out['simulation_high_4'] <- res_4[[2]]$hi

write.csv(out, 'out_crossk.csv', row.names=F, quote=F)
