// ==========================================================================

// Total Population

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

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// change directory

cd "/Users/`c(username)'/Github Desktop/BarriersSocioSpatial/Working"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if source data exists

global sourceData "ACS_15_5YR_B03002.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "acsVariableRename2015"
global markDown "totalPopulation"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// copy source data to new directory

global newData "totalPopulation.dta"
copy $sourceData "$projName/$newData", replace

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$markDown.txt", text replace

// start MarkDoc log
quietly log using "$projName/$markDown-markdoc.smcl", replace smcl name(markdoc)
// ==========================================================================

/*
file name - B03002.do

project name - Total Population

purpose - Labels variables from the 2015 ACS

created - Febuary 7, 2017

updated - Febuary 7, 2017

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do file renames the total population variable.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- ACS_15_5YR_B03002.dta
*/

/*
subordinates -
- data.do
- analysis.do
*/

// ==========================================================================

// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/totalPopulation.dta"
drop geoid
/***
Drops variable from set for later merge.
***/

rename geoid2 tractid
label variable tractid "TRTID10"
/***
Renames and labels variable to match variable name for later merge
***/

rename hd01_vd01 pop15a
rename hd02_vd01 pop15aME
/***
Renames variables to match variables from previous census datasets for later merge.
***/

label variable pop15a "Total Population"
label variable pop15aME "Total Population Margin of Error"
/***
Labels variable from set to match.
***/

rename hd01_vd03 nhwht15a
rename hd02_vd03 nhwht15aME
label variable nhwht15a "Persons of White Race, Not Hispanic"
label variable nhwht15aME "Persons of White Race, Not Hispanic Margin of Error"

rename hd01_vd04 nhblk15a
rename hd02_vd04 nhblk15aME
label variable nhblk15a "Persons of Black Race, Not Hispanic"
label variable nhblk15aME "Persons of Black Race, Not Hispanic Margin of Error"

keep tractid pop15a pop15aME nhwht15a nhwht15aME nhblk15a nhblk15aME geodisplaylabel

// ==========================================================================
// ==========================================================================
// ==========================================================================

// end MarkDoc log
quietly log close markdoc

// convert MarkDoc log to Markdown
markdoc "$projName/$markDown-markdoc", replace export(md) install

// save altered data
save "$projName/$newData", replace

// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive


copy "B03002.do" "$projName/CodeArchive/B03002.do", replace


// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
