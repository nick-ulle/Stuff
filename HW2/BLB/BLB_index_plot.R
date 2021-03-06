#!/usr/bin/env Rscript
# BLB_index_plot.R
# Author: Nick Ulle
# Description:
#   This script produces the index plot for HW2, part 1, provided the bag of
#   little bootstraps has already been run (including the post-processing
#   script).

library(lattice)

data <- read.table('final/blb_lin_reg_data_s5_r50_SE.txt', header = TRUE)[[1]]

png('../tex/res/01_index_plot.png', 8, 8, units = 'in', res = 300)
xyplot(data ~ seq_along(data), main = 'Index Plot', xlab = 'Index',
       ylab = 'Estimated Standard Error',
       panel = function(x, y, ...) {
           panel.xyplot(x, y, ...)
           panel.abline(h = 0.01)
       })
dev.off()

cat('Plot generated successfully!\n')

