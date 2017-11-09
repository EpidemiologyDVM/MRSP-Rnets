for(abx in ABX_SET){
  x <- eval(parse(text = paste('MecA_MICs_Wide', abx, sep = '$')))
 # browser()
  print(table(x))
  hist(x,
       breaks = (min(x, na.rm = T)-0.5):(max(x, na.rm = T)+.5),
       main = abx,
       xlab = min(x, na.rm = T):max(x, na.rm = T)
      )
  browser()
}

for(abx in ABX_SET){
  x <- eval(parse(text = paste('MRSP.data', abx, sep = '$')))
  # browser()
  print(table(x))
  hist(x,
       breaks = (min(x, na.rm = T)-0.5):(max(x, na.rm = T)+.5),
       main = abx,
       xlab = min(x, na.rm = T):max(x, na.rm = T)
  )
  browser()
}
