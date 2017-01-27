# BarriersSocioSpatial
# Research Log

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

### 11 Oct 2016 - Jes
<<<<<<< HEAD
The correct original data files with the data matched to 2010 Census geography boundaries were added to the master repository. The sample count data files were added as well. These files are referenced/described above. The `README.md` file was also updated to accurately reflect the licensing agreements for the datasets.

### 13 Oct 2016 - Jes

A branch was created off the `master` BarriersSocioSpatial Repository, titled fileConversion. In this fileConversion branch a working folder was added. Off of this branch a convert.do file was run. This do file runs two loops. The first loop takes the BrownLTDB `fullcount.csv` data and converts these `.csv` files into `.dta` files, it then renames the new `.dta` file and saves the new dataset. It reiterates each loop for each subsequent dataset, 1970-2010. The second loop follows this same process with the BrownLTDB `.csv` sample files, 1970-2000. Two loops were created for maximization of reproducibility. After this convert.do file was run successfully the new `.dta` files, log file, and code archive was committed to the working folder. This working folder and the fileConversion branch was published, and a pull request was submitted.


The correct original data files with the data matched to 2010 Census geography boundaries were added to the master repository. The sample count data files were added as well. These files are referenced/described above. The `README.md` file was also updated to accurately reflect the licensing agreements for the datasets.

After these were added, they were imported into Stata and saved as Stata `.dta` files. These were saved in `Working/fileConversion` repository. Pull request was opened to incorporate these into the `master` branch.

### 21 Oct 2016 - CHRIS

Accepted Jes's pull request and merged the data into the `master` branch. Moved data into the `Posted/01-fileConversion` directory.

### 27 - Oct 2016 - JES

Committed the merge into `master` branch after Chris' acceptance of my pull request. Deleted the `fileConversion` branch. A `fileMerge` branch was created. Read the Stata Manual on merging miles as referenced by Chris in our Slack conversation. The `convert.do` file was referenced for structure and reminder of using the loop command for the next step in the BarriersSocioSpatial project. The next step to be completed is too merge the 5 `fullcount.dta` files into a single file and to merge the 4 `sample.dta` files into a single `sample.dta` file.

### 1 Nov 2016 - Jes

Working under the `fileMerge` branch the `sample2010.dta` file was added after realizing it was left out of the initial `convert.do` loop.

After discussion with Taylor and looking at the datasets it was determined that to complete a merge of multiple datasets a key variable was needed. This key must be the same across all of the `.dta` files. After reviewing the datasets the variable `tractid` of the most recent datasets was chosen as the variable name, and `trtid10` in the other variables were renamed to `tractid`. Because this initial cleaning of the variables is necessary for a future merge a keep command was used for all observations under the `county` variable that were equal to `St. Louis city` meaning all other observations were dropped from the datasets.

These files were cleaned from the `clean.do` file and saved under the `preMergeFileCleaning` folder in the local working directoy. This folder was them moved to the `fileMerge` folder located in the working folder on the `fileMerge` branch and published to Github.   

### 2 Nov 2016 - Jes

Working under the fileMerge branch I created the merge.do file. This file runs a loop which adds a variable named `year` to each dataset. The second loop merges the `sample`.dta files with `fullcount`.dta files. i.e. `fullcount1970.dta` is merged with `sample1970.dta`, `fullcount1980.dta` is merged with `sample1980.dta`.  The `year` variable was added to the datasets first so when the merges are completed the merge loop can assert that the `sample` years are merging with the correct `fullcount` years. After all of these loops are merged the third and final loop merges each combined dataset into one large dataset. i.e. `stlCity1970.dta` is saved as the master file, renamed as `stlCity40` and merged with: `stlCity1980.dta` `stlCity1990.dta` `stlCity2000.dta` `stlCity2010.dta`. These files were then added to the `fileMerge` branch under the `fileMergePIC` folder. A pull request was then submitted for the `fileMerge` branch.

### 15 Dec 2016 - Jes

Working under the variable-labels branch I created a master.do file and a data.do file. The master do-file creates the project name, copies the original dataset to the working directory. The data do-file pulls the copied, source, dataset from the working directory. It then generates a markdown file, and begins to label the variables from the merged data we previously compiled. The LTDB codebook was used to label the variables and make notes on certain variables. John R. Logan, Zengwang Xu, and Brian Stults. 2012. "Interpolating US Decennial Census Tract Data from as Early as 1970 to 2010: A Longitudinal Tract Database" Professional Geographer, forthcoming.

Because the dataset includes over 500 variables I used foreach loops that have a variable list. The year that the variable coincides with is in the variable itself. i.e. `pop70` = 1970, `pop80` = 1980, `pop90` = 1990, `pop00` = 2000, `pop10` = 2010, `pop0a` = 2006-2010 ACS data.  

### 19 Dec 2016 - Jes

Working under the variable-labels branch edits were made to the data do-file. Edits included adding a variable label to the `tract` variable, and dropping the variables that serve as place markers. After these edits were made a pull request was submitted to add the data into the master branch. After meeting with Chris Prener key variables have been identified that will be included in the spatial analysis. These include the variables related to `population`, `white`, `black`, `civilian labor force`, `unemployment`, `median household income`, `per capita income`, `persons in poverty`, `vacant housing units`, `owner occupied`, `renter occupied`, `total housing`, and `median home value`. Next steps include determining that all of these key variables include 2010 census data. If 2010 variables are not included in this dataset then the variables will be downloaded from American Fact Finder. Variables from the most recent American Community Survey will also be downloaded and added to the dataset.

### 26 Jan 2017 - Jes

From the master branch files from the working directory were moved to the posted directory for organizational purposes. After this the codebook was used to find the ID's for the variables that have been identified above for the spatial analysis. By finding the variable ID's it was easier to search for the variable tables from American Fact Finder. The tables downloaded were from the ACS 2015 5 year estimates. After downloading these tables, a new branch was created named 2015-ACS-5yr. Under this branch the downloaded tables were added to Github in there original .csv file state.

 >> > > > > > origin/master
