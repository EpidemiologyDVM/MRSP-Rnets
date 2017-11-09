MIC.matr <- as.matrix(MRSP.data[,ABX_SET])

MRSP.MecA.manova <- manova(MIC.matr ~ MRSP.data$MecA)
MRSP.MecA.src.manova <- manova(MIC.matr ~ MRSP.data$MecA + MRSP.data$Source)

for(sig.test in c('Wilks', 'Pillai', 'Hotelling-Lawley', 'Roy')) {
  cat('\n\n\n', sig.test, '\n')
  print(summary(MRSP.MecA.src.manova, test = sig.test ))
}

MRSP.MecA.mlm <- lm(MIC.matr ~ MRSP.data$MecA)
MRSP.MecA.src.mlm <- lm(MIC.matr ~ MRSP.data$MecA + MRSP.data$Source)
summary(MRSP.MecA.mlm)
summary(MRSP.MecA.src.mlm)

biotools::boxM(MIC.matr, MRSP.data$MecA)
biotools::boxM(MIC.matr, MRSP.data$Source)
