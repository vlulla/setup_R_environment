#!/usr/bin/env Rscript

update.packages(ask=FALSE, checkBuilt=TRUE, dependencies=TRUE)

packages <- c( "Rcpp", "data.table",  "RSQLite", "stringi", "stringr",
      "glmnet", "tm", "tau", "gbm", "spatstat",  "sp", "sf", "mapview", "leaflet",
      "nnet", "censusapi", "broom", "tidyverse", "ggplot2", "simstudy", "Matrix",
      "randomForest", "xgboost", "caret", "e1071", "spdep", "deldir", "raster",
      "rgdal", "sqldf" )

notinstalled <- unique(setdiff(packages, rownames(installed.packages())))
if(length(notinstalled) > 0) install.packages(packages, dependencies=TRUE)
