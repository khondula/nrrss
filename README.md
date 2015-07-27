# nrrss
National River Restoration Science Synthesis

This repository contains an sqlite (https://www.sqlite.org/) version of the NRRSS database that was developed by an international group of collaborators as part of an effort funded by NCEAS, NSF, USGS, the David and Lucille Packard Foundation, Altria, and the U.S. EPA.

Bernhardt, E.S., M. A. Palmer, J. D. Allan, .G. Alexander, S. Brooks, J. Carr, C. Dahm, et al. 2005. Synthesizing U.S. River Restoration. Science 308:636-637. 

Read here: http://palmerlab.umd.edu/Publications/Bernhardt%20et%20al%202005%20Science.pdf

This repository's wiki contains a description of the tables included in the database.

Browse this database with sqlite db browser: http://sqlitebrowser.org/ or with the firefox browser plug-in: https://addons.mozilla.org/en-US/firefox/addon/sqlite-manager/

# R Users

The `RSQLite` package provides an easy interface to working with .sqlite files in R. 

```r
install.packages("RSQLite")
library(RSQLite)

drv <- dbDriver("SQLite")
db <- "filepath/nrrss.sqlite" # specify directory where file is
con <- dbConnect(drv, db)
```