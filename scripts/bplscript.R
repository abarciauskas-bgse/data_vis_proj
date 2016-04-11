# starting from bplmnist README
if (!require('jsonlite')) install.packages('jsonlite')
p <- generatePaths(train.set)
pjson = toJSON(p, pretty = TRUE)
write(pjson, file = "~/Projects/data_vis_proj/data/digit-paths.json")
write.csv(train.idcs, '~/Projects/data_vis_proj/data/train-idcs.csv', row.names = FALSE)
points <- p[[1]]$path
plot(points)
for (i in 1:nrow(points)) {
  points(points[i,1], points[i,2], pch = 19)
  Sys.sleep(1)
}
