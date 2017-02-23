// ==========================================================================

// Barriers SocioSpatial Missing Variable File Conversion

// ==========================================================================

// standard opening options

version 14
log close _all
clear all
set more off
set linesize 80

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// confirm necessary packages present

which markdoc

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// change directory

cd "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/missingVariables"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "stataFiles"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

// ==========================================================================

/*
file name - convert.do

project name - Barriers Socio-Spatial

purpose - This do-file converts the .csv missing ACS data files to .dta files.

created - January 28, 2017

updated - January 28, 2017

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do-file converts the missing variable .csv files to stata .dta files. 
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- ACS_10_5YR_B25001.csv
- ACS_15_5YR_B01003.csv
- ACS_15_5YR_B03002.csv
- ACS_15_5YR_B17001.csv
- ACS_15_5YR_B17010.csv
- ACS_15_5YR_B17020B.csv
- ACS_15_5YR_B17020H.csv
- ACS_15_5YR_B19013.csv
- ACS_15_5YR_B19013B.csv
- ACS_15_5YR_B19013H.csv
- ACS_15_5YR_B19301.csv
- ACS_15_5YR_B23001.csv
- ACS_15_5YR_B25001.csv
- ACS_15_5YR_B25002.csv
- ACS_15_5YR_B25003.csv
- ACS_15_5YR_B25003A.csv
- ACS_15_5YR_B25003B.csv
- ACS_15_5YR_B25034.csv
- ACS_15_5YR_B25058.csv
- ACS_15_5YR_B25077.csv
*/

/*
subordinates -
- ACS_10_5YR_B25001.dta
- ACS_15_5YR_B01003.dta
- ACS_15_5YR_B03002.dta
- ACS_15_5YR_B17001.dta
- ACS_15_5YR_B17010.dta
- ACS_15_5YR_B17020B.dta
- ACS_15_5YR_B17020H.dta
- ACS_15_5YR_B19013.dta
- ACS_15_5YR_B19013B.dta
- ACS_15_5YR_B19013H.dta
- ACS_15_5YR_B19301.dta
- ACS_15_5YR_B23001.dta
- ACS_15_5YR_B25001.dta
- ACS_15_5YR_B25002.dta
- ACS_15_5YR_B25003.dta
- ACS_15_5YR_B25003A.dta
- ACS_15_5YR_B25003B.dta
- ACS_15_5YR_B25034.dta
- ACS_15_5YR_B25058.dta
- ACS_15_5YR_B25077.dta
*/


// ==========================================================================
// ==========================================================================
// ==========================================================================


local dataPath "/Users/`c(username)'/Github Desktop/BarriersSocioSpatial/Working/missingVariables"
local files "ACS_10_5YR_B25001.csv ACS_15_5YR_B01003.csv ACS_15_5YR_B03002.csv ACS_15_5YR_B17001.csv ACS_15_5YR_B17010.csv ACS_15_5YR_B17020B.csv ACS_15_5YR_B17020H.csv ACS_15_5YR_B19013.csv ACS_15_5YR_B19013B.csv ACS_15_5YR_B19013H.csv ACS_15_5YR_B19301.csv ACS_15_5YR_B23001.csv ACS_15_5YR_B25001.csv ACS_15_5YR_B25002.csv ACS_15_5YR_B25003.csv ACS_15_5YR_B25003A.csv ACS_15_5YR_B25003B.csv ACS_15_5YR_B25034.csv ACS_15_5YR_B25058.csv ACS_15_5YR_B25077.csv"
local newNames "ACS_10_5YR_B25001.dta ACS_15_5YR_B01003.dta ACS_15_5YR_B03002.dta ACS_15_5YR_B17001.dta ACS_15_5YR_B17010.dta ACS_15_5YR_B17020B.dta ACS_15_5YR_B17020H.dta ACS_15_5YR_B19013.dta ACS_15_5YR_B19013B.dta ACS_15_5YR_B19013H.dta ACS_15_5YR_B19301.dta ACS_15_5YR_B23001.dta ACS_15_5YR_B25001.dta ACS_15_5YR_B25002.dta ACS_15_5YR_B25003.dta ACS_15_5YR_B25003A.dta ACS_15_5YR_B25003B.dta ACS_15_5YR_B25034.dta ACS_15_5YR_B25058.dta ACS_15_5YR_B25077.dta"
local i=1
foreach dataFile in `files' {
  local newData: word `i' of `newNames'
  import delimited "`dataPath'/`dataFile'", varnames(1)
  save "$projName/`newData'", replace
  clear
  local i=`i'+1
}


// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive

copy "convertMissing.do" "$projName/CodeArchive/convertMissing.do", replace


// ==========================================================================

// standard closing options

log close _all
set more on

// ==========================================================================

exit
