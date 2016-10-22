// ==========================================================================

// Barriers SocioSpatial File Conversion

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

cd "/Users/`c(username)'/Documents/Working"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "fileConversion"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

// ==========================================================================

/*
file name - convert.do

project name - SOC5050: Quantitative Analysis, Fall 2016

purpose - This do-file converts the .csv census data files to .dta files.

created - October 13, 2016

updated - October 13, 2016

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do-file converts the 1970, 1980, 1990, 2000, and 2010 .csv fullcount data files to .dta files, and saves them under new file names.
It follows the same process for converting the sample 1970, 1980, 1990, and 2010 .csv to .dta files.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- LTDB_Std_1970_fullcount.csv
- LTDB_Std_1980_fullcount.csv
- LTDB_Std_1990_fullcount.csv
- LTDB_Std_2000_fullcount.csv
- LTDB_Std_2010_fullcount.csv
- ltdb_std_1970_sample.csv
- ltdb_std_1980_sample.csv
- ltdb_std_1990_sample.csv
- ltdb_std_2000_sample.csv
*/

/*
subordinates -
- fullcount1970.dta
- fullcount1980.dta
- fullcount1990.dta
- fullcount2000.dta
- fullcount2010.dta
- sample1970.dta
- sample1980.dta
- sample1990.dta
- sample2000.dta
*/


// ==========================================================================
// ==========================================================================
// ==========================================================================


local dataPath "/Users/`c(username)'/Github Desktop/BarriersSocioSpatial/BrownLTDB/LTDB_Std_All_fullcount"
local files "LTDB_Std_1970_fullcount.csv LTDB_Std_1980_fullcount.csv LTDB_Std_1990_fullcount.csv LTDB_Std_2000_fullcount.csv LTDB_Std_2010_fullcount.csv"
local newNames "fullcount1970.dta fullcount1980.dta fullcount1990.dta fullcount2000.dta fullcount2010.dta"
local i=1
foreach dataFile in `files' {
  local newData: word `i' of `newNames'
  import delimited "`dataPath'/`dataFile'", varnames(1)
  save "$projName/`newData'", replace
  clear
  local i=`i'+1
}

local dataPath "/Users/`c(username)'/Github Desktop/BarriersSocioSpatial/BrownLTDB/LTDB_Std_All_Sample"
local files "ltdb_std_1970_sample.csv ltdb_std_1980_sample.csv ltdb_std_1990_sample.csv ltdb_std_2000_sample.csv"
local newNames "sample1970.dta sample1980.dta sample1990.dta sample2000.dta"
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

copy "convert.do" "$projName/CodeArchive/convert.do", replace


// ==========================================================================

// standard closing options

log close _all
set more on

// ==========================================================================

exit
