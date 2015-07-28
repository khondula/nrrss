install.packages("installr") # install 
installr::updateR() # updating R.
install.packages("RSQLite")
install.packages('dplyr')
install.packages('ggplot2')
install.packages('tidyr')
install.packages('leaflet')
library(RSQLite)
library(dplyr)
library(ggplot2)

drv <- dbDriver("SQLite")

# list.files("Z:/research/nrrss")
db <- "Z:/research/nrrss/nrrss.sqlite"
db <- "~/research/nrrss/nrrss.sqlite"
con <- dbConnect(drv, db)

# list tables
dbListTables(con)

# list fields in a particular table
dbListFields(con, name="nrrss_record_table")

q1 = "SELECT * FROM proj_activities_table;"
proj_activities_table <- dbGetQuery(con, q1)

head(proj_activities_table)

q2 = "SELECT * FROM proj_ident_table;"
proj_ident_table <- dbGetQuery(con, q2)

head(proj_ident_table)

# Fig S1. The number of river restoration project records in NRRSS
# count number of project records by year
proj_ident_table <- group_by(proj_ident_table, proj_year_implemented)
project_years <- summarise(proj_ident_table, count = n())
project_years <- filter(project_years, proj_year_implemented >0)

ggplot(data=project_years, aes(x = proj_year_implemented, y = count)) +
  geom_point()

# Table S1. Regional differences in stream restoration efforts
# Number of projects by state per 1000 km of streams and rivers

# Total cost by state per 100 km of streams and rivers

# Percent of projects with some type of monitoring indicated in the project record
proj_activities_table <- group_by(proj_activities_table, monitoring_ind)
percent_monitored <- summarise(proj_activities_table, count=n())

# state_territory table$state_terr_name

# Table A1. List of types of data sources, the number of each type of source, and the average number of records obtained from each source for the NRRSS database.



# Fig. A1. Regional differences in the distribution of types of restoration efforts. To facilitate visual comparison only the top five intent categories for each node are shown in each stacked column. All other "non-dominant" intents are summed as part of the "nondominant" category.

# proj_intent_table$proj_intent_category