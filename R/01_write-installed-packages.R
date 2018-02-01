## deja vu from yesterday!
library(tidyverse)
library(here)
library(magrittr)

## create a data frame of your installed packages
pkgs <- as_tibble(installed.packages())

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
pkgs %<>% select(Package, LibPath, Version, Priority, Built)

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like
write_csv(pkgs, path=here("data", "installed-packages.csv"))

## when this script works, stage & commit it and the csv file
## PUSH!
