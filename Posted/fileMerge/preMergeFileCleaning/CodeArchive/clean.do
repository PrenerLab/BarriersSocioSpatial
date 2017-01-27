// ==========================================================================

// Barriers SocioSpatial Pre-Merge Cleaning

// ==========================================================================

// standard opening options

version 14
log close _all
graph drop _all
clear all
set more off
set linesize 80

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// confirm necessary packages present

which markdoc

// change directory

cd "/Users/`c(username)'/Documents/Working"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "preMergeFileCleaning"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

// ==========================================================================

/*
file name - master.do

project name - Barriers SocioSpatial

purpose - This do-file runs the data cleaning commands for the Barriers SocioSpatial project.

created - November 1, 2016

updated - November 1, 2016

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do-file runs two loops. The first loop renames a variable to match all
datasets and drops all observations outside of St. Louis sity. The second loop
drops all of the observations ouside of St. Louis City for the datasets that
already contain the correct variables.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- fullcount1970.dta
- fullcount1980.dta
- fullcount1990.dta
- fullcount2000.dta
- fullcount2010.dta
- sample1970.dta
- sample1980.dta
- sample1990.dta
- sample2000.dta
- sample2010.dta
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
- sample2010.dta
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

local dataPath "/Users/`c(username)'/Github Desktop/BarriersSocioSpatial/Posted/01-fileConversion"
local fileNames "fullcount1970.dta fullcount1980.dta fullcount1990.dta fullcount2000.dta sample1970.dta sample1980.dta sample1990.dta sample2000.dta"
local tenNames "fullcount2010.dta sample2010.dta"
local i = 1

foreach fileName in `fileNames' {
  local newData: word `i' of `fileNames'
  use "`dataPath'/`fileName'"
  rename trtid10 tractid
  keep if county == "St. Louis city"
  save "$projName/`newData'", replace
  clear
  local ++i
}

foreach tenName in `tenNames' {
  local newData: word `i' of `tenNames'
  use "`dataPath'/`tenName'"
  keep if county == "St. Louis city"
  save "$projName/`tenName'", replace
  clear
  local ++i
}

// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive

copy "clean.do" "$projName/CodeArchive/clean.do", replace



// ==========================================================================

// standard closing options

log close _all
set more on

// ==========================================================================

exit
