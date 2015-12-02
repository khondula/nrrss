# National River Restoration Science Synthesis

In 2004, the National River Restoration Scientific Synthesis (NRRSS) database was compiled by a team of ~ 20 scientists.  This was the first-ever comprehensive database on stream and river restoration projects. It includes basic information on more than 37,000 projects across the U.S.  It resulted in many publications with the broad national-level results published in Science.   Lead scientists for the project were: M.A. Palmer (Univ of Maryland), J.D. Allan (Univ Michigan), and E.S. Bernhardt (postdoc at Univ of Maryland; now faculty at Duke University).  The project included a collaboration with American Rivers and benefitted from funding from the National Center for Ecological Analysis and Synthesis, the Packard Foundation, the C.S. Mott Foundation; cyber support was provided by the U.S. Geological Survey.

## Publications resulting from the NRRSS database

### NRRSS national synthesis (entire U.S.) papers:

#### 2005 

- Bernhardt, Emily S.; Palmer, Margaret A.; Allan, J. David; Alexander, Gretchen; Barnas, Katie; Brooks, 
Shane; Carr, Jamie; Clayton, Steve; Dahm, Clifford; Follstad-Shah, Jennifer; Galat, David L.; Gloss, Steven P.; Goodwin, Peter; Hart, David; Hassett, Brooke; Jenkinson, Robin; Katz, Stephen L.; Kondolf, G. Mathias; Lake, P. Sam; Lave, Rebecca; Meyer, Judy; O'Donnell, T. Kevin; Pagano, Laura; Powell, Bruce; Sudduth, Elizabeth. 2005. Synthesizing US river restoration efforts. Science. Vol: 308(5722). Pages 636-637.

- Palmer, Margaret A.; Bernhardt, Emily S.; Allan, J. David; Lake, P. Sam; Alexander, Gretchen; Brooks, 
Shane; Carr, Jamie; Clayton, Steve; Dahm, Clifford; Follstad-Shah, Jennifer; Galat, David L.; Loss, S. G.; Goodwin, Peter; Hart, David; Hassett, Brooke; Jenkinson, Robin; Kondolf, G. Mathias; Lave, Rebecca; Meyer, Judy; O'Donnell, T. Kevin; Pagano, Laura; Sudduth, Elizabeth. 2005. Standards for ecologically successful river restoration. Journal of Applied Ecology. Vol: 42. Pages 208-217.

#### 2006

- Palmer, Margaret A. and J. David Allan. 2006. Restoring Rivers.  2006.  Policy Recommendations to Enhance Effectiveness of River Restoration published in U. S. National Academy of Science: Issues in Science and Technology, 22: 40 - 48.  

#### 2007

- Palmer, Margaret A.; Allan, J. David; Meyer, Judy; Bernhardt, Emily S. 2007. River restoration in the Twenty-First Century: Data and experiential knowledge to inform future efforts. Restoration Ecology. Vol: 15(3). Pages 472-481

- Bernhardt, Emily S.; Sudduth, Elizabeth; Palmer, Margaret A.; Allan, J. David; Meyer, Judy; Alexander, Gretchen; Follstad-Shah, Jennifer; Hassett, Brooke; Jenkinson, Robin; Lave, Rebecca; Rumps, Jeanne M.; Pagano, Laura. 2007. Restoring rivers one reach at a time: Results from a survey of U.S. river restoration practitioners. Restoration Ecology. Vol: 15(3). Pages 482-493.


### Regional Synthesis Papers

#### 2005

- Hassett, Brooke; Palmer, Margaret A.; Bernhardt, Emily S.; Smith, Sean; Carr, Jamie; Hart, David. 2005. 
Restoring watersheds project by project: Trends in Chesapeake Bay tributary restoration. Frontiers in Ecology and the Environment. Vol: 3(5). Pages 259-267.

#### 2006

- Alexander, Gretchen G. and J. David Allan.  2006.  Ecological success in stream restoration: case studies from the Midwestern United States.   Environmental Management 

#### 2007

- Barnas, Katie; Katz, Stephen L. 2010. The Challenges of tracking Habitat Restoration at Various 
Spatial Scales. Fisheries. Vol: 35(5). Pages 232-241.

- Brooks, Shane; Lake, P. Sam. 2007. River restoration in Victoria, Australia: Change is in the wind, and 
none too soon. Restoration Ecology. Vol: 15(3). Pages 584-591.

- Follstad-Shah, Jennifer; Dahm, Clifford; Gloss, Steven P.; Bernhardt, Emily S. 2007. River and riparian 
restoration in the southwest: Results of the National River Restoration Science Synthesis Project. Restoration Ecology. Vol: 15(3). Pages 550-562.

- Hassett, Brooke; Palmer, Margaret A.; Bernhardt, Emily S. 2007. Evaluating stream restoration in the Chesapeake Bay watershed through practitioner interviews. Restoration Ecology. Vol: 15(3). Pages 563-572.

- Katz, Stephen L.; Barnas, Katie; Hicks, Ryan; Cowen, Jeff; Jenkinson, Robin. 2007. Freshwater habitat restoration actions in the Pacific Northwest: A decade's investment in habitat improvement. Restoration Ecology. Vol: 15(3). Pages 494-505.

- Kondolf, G. Mathias; Anderson, Shannah; Lave, Rebecca; Pagano, Laura; Merenlender, Adina M.; Bernhardt, Emily S. 2007. Two decades of river restoration in California: What can we learn?. Restoration Ecology. Vol: 15(3). Pages 516-523.

- Rumps, Jeanne M.; Katz, Stephen L.; Barnas, Katie; Morehead, Mark; Jenkinson, Robin; Clayton, Steve; Goodwin, Peter. 2007. Stream restoration in the Pacific Northwest: Analysis of interviews with project managers. Restoration Ecology. Vol: 15(3). Pages 506-515.

- Sudduth, Elizabeth; Meyer, Judy; Bernhardt, Emily S. 2007. Stream restoration practices in the 
southeastern United States. Restoration Ecology. Vol: 15(3). Pages 573-583.

- Tompkins, Mark R.; Kondolf, G. Mathias. 2007. Systematic postproject appraisals to maximise lessons learned from river restoration projects: Case study of compound channel restoration projects in northern California. Restoration Ecology. Vol: 15(3). Pages 524-537.


# How to access the database

Browse this database (`nrrss.sqlite`) with sqlite db browser: http://sqlitebrowser.org/ or with the firefox browser plug-in: https://addons.mozilla.org/en-US/firefox/addon/sqlite-manager/

## R Users

The `RSQLite` package provides an easy interface to working with .sqlite files in R. 

```r
install.packages("RSQLite")
library(RSQLite)

drv <- dbDriver("SQLite")
db <- "filepath/nrrss.sqlite" # specify directory where file is
con <- dbConnect(drv, db)
```
