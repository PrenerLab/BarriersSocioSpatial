# BarriersSocioSpatial
## Research Log

Please keep this file updated as you work on the project. Any links / context / insight you can give that helps explain the decisions you are making will be very helpful! These should also *expand* on the content of your commit summaries and descriptions. Think of those as the short, bite-size summaries of the notes you add here.

### 29 Sep 2016 - CHRIS
Repository created with .gitignore, README.md, and researchLog.md files added.

### 29 Sep 2016 - JES
Added all historical census data from the [Brown LTDB project](http://www.s4.brown.edu/us2010/Researcher/LTDB.htm). These data contain historical data matched to 2010 Census geography boundaries. A quick description of the project:

> The LTDB provides estimates using 2010 boundaries for a standard set of variables from 1970 through 2000. These data may meet the needs of many users. As an initial step, we provide two sets of files. The "full count" files include the key variables from Census 2010 (race and Hispanic origin, age by race and Hispanic origin, household composition, and housing occupancy and tenure), with comparable variables from the censuses in 1970-2000 and adjusted to 2010 boundaries. The "sample count" files include a wide range of other variables based on sample data -- the one-in-six samples from the decennial census in 1970-2000 and the sample data from the American Community Survey for 2006-2010. These include variables such as socioeconomic characteristics that are widely used by researchers.

*Next Steps:* Both Chris and I are going to check out the structure of the datafiles and figure out how to integrate them into the existing project data.

### 06 Oct 2016 - JES
~~Created a branch off of the BarriersSocioSpatial Repository, titled initialCleaning. In the initialCleaning branch, a working folder has been added. After the addition of this branch, original data files were copied into a working folder on my local hard drive to explore dataset cleaning. Once the 1970, 1980, and 1990 files were copied to the appropriate working folder I created a master do-file to run initial data cleaning. This master do file uses the source data from the [Brown LTDB project](http://www.s4.brown.edu/us2010/Researcher/LTDB.htm). Beginning with the 1970 census data it drops any observations not equal to the Missouri id `State (29)` and then drops observations that are not equal to `county (510)`. After these observations are dropped the dataset is saved and the next dataset is opened to repeat the above steps for the following census year. By dropping all other observations these new datasets will only include census information pertaining to St. Louis, Missouri.~~

### 07 Oct 2016 - CHRIS
The branch referenced above was removed last night based on a Slack conversation with Chris, Taylor, and Jes. Going to approach this process from the ground up a second time based on that conversation.
