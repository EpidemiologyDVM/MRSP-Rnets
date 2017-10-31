#LOAD PACKAGES
library(RMySQL)


#CONNECT TO STAPH DATABASE
STAPH_DB_CXN <- dbConnect(RMySQL::MySQL(), 
                          host = 'lanzas-lab.cmaytakjco4n.us-east-2.rds.amazonaws.com',
                          user = "LanzasNCSU", pass = "Lan2as_Lab",
                          dbname = "copos_staph",
                          port = 3306
                          )

source('IMPORT MRSP Data.R')
