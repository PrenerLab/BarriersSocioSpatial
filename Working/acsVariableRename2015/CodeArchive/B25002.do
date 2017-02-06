// ==========================================================================

// Vacant Housing Units

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

global sourceData "ACS_15_5YR_B25002.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "acsVariableRename2015"
global markDown "vacantHousingUnits"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// copy source data to new directory

global newData "vacantHousingUnits.dta"
copy $sourceData "$projName/$newData", replace

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$markDown.txt", text replace

// start MarkDoc log
quietly log using "$projName/$markDown-markdoc.smcl", replace smcl name(markdoc)

// ==========================================================================

/*
file name - B25002.do

project name - Vacant Housing Units

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
- ACS_15_5YR_B25002.dta
*/

/*
subordinates -

*/

// ==========================================================================


// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/vacantHousingUnits.dta"
drop geoid
/***
Drops variable from set for later merge.
***/

rename geoid2 tractid
label variable tractid "TRTID10"
/***
Renames and labels variable to match variable name for later merge
***/

rename hd01_vd01 hu15a
rename hd02_vd01 hu15aME
rename hd01_vd03 vac15a
rename hd02_vd03 vac15aME
/***
Renames variables to match variables from previous census datasets for later merge.
***/

label variable hu15a "Housing Units"
label variable hu15aME "Housing Units Margin of Error"
label variable vac15a "Vacant Housing Units"
label variable vac15aME "Vacant Housing Units Margin of Error"
/***
Labels variable from set to match.
***/




keep tractid geodisplaylabel hu15a hu15aME vac15a vac15aME

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


copy "B25002.do" "$projName/CodeArchive/B25002.do", replace


// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
