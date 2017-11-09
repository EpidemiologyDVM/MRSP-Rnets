library(car)
MIC.matr.raw <- as.matrix.data.frame(MRSP.data[,ABX_SET])
MIC.jit.offset <- matrix(
                    runif(
                      dim(MIC.matr.raw)[1] * dim(MIC.matr.raw)[2], 
                      -1, 
                      0
                      ),
                    nrow = dim(MIC.matr.raw)[1],
                    ncol = dim(MIC.matr.raw)[2]
                    )

MIC.jit.matr <- MIC.matr.raw + MIC.jit.offset

plot.formula <- as.formula(paste('~',paste(ABX_SET, collapse = ' + '), '| MRSP.data$MecA'))


scatterplotMatrix(plot.formula, data = MIC.jit.matr)
