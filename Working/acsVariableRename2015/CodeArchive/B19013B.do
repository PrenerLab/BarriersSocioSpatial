// ==========================================================================

// Median Household Income Blacks

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

global sourceData "ACS_15_5YR_B19013B.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "acsVariableRename2015"
global markDown "medianHouseholdIncomeBlacks"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"


// copy source data to new directory

global newData "medianHouseholdIncomeBlacks.dta"
copy $sourceData "$projName/$newData", replace

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$markDown.txt", text replace

// start MarkDoc log
quietly log using "$projName/$markDown-markdoc.smcl", replace smcl name(markdoc)

// ==========================================================================

/*
file name - B19013B.do

project name - Median Household Income Blacks

purpose - Labels variables from the 2015 ACS

created - Febuary 7, 2017

updated - Febuary 7, 2017

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do file renames the 2015 acs Variables.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- ACS_15_5YR_B19013B.dta
*/

/*
subordinates -

*/

// ==========================================================================


// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/medianHouseholdIncomeBlacks.dta"
drop geoid
/***
Drops variable from set for later merge.
***/

rename geoid2 tractid
label variable tractid "TRTID10"
/***
Renames and labels variable to match variable name for later merge
***/

rename hd01_vd01 hincb15a
rename hd02_vd01 hincb15aME
/***
Renames variables to match variables from previous census datasets for later merge.
***/

label variable hincb15a "Median Household Income Blacks"
label variable hincb15aME "Median Household Income Blacks Margin of Error"
/***
Labels variable from set to match.
***/



keep tractid geodisplaylabel hincb15a hincb15aME

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


copy "B19013B.do" "$projName/CodeArchive/B19013B.do", replace


// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
