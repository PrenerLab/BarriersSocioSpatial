// ==========================================================================

// Occupied Housing Units

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

global sourceData "ACS_15_5YR_B25003.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "acsVariableRename2015"
global markDown "occupiedHousingUnits"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// copy source data to new directory

global newData "occupiedHousingUnits.dta"
copy $sourceData "$projName/$newData", replace

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$markDown.txt", text replace

// start MarkDoc log
quietly log using "$projName/$markDown-markdoc.smcl", replace smcl name(markdoc)

// ==========================================================================

/*
file name - B25003.do

project name - Occupied Housing Units

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
- ACS_15_5YR_B25003.dta
*/

/*
subordinates -

*/

// ==========================================================================


// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/occupiedHousingUnits.dta"
drop geoid
/***
Drops variable from set for later merge.
***/

rename geoid2 tractid
label variable tractid "TRTID10"
/***
Renames and labels variable to match variable name for later merge
***/

rename hd01_vd02 own15a
rename hd02_vd02 own15aME
rename hd01_vd03 rent15a
rename hd02_vd03 rent15aME
/***
Renames variables to match variables from previous census datasets for later merge.
***/

label variable own15a "Owner Occupied Housing Units"
label variable own15aME "Owner Occupied Housing Units Margin of Error"
label variable rent15a "Renter Occupied Housing Units"
label variable rent15aME "Renter Occupied Housing Units Margin of Error"
/***
Labels variable from set to match.
***/




keep tractid geodisplaylabel own15a own15aME rent15a rent15aME

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


copy "B25003.do" "$projName/CodeArchive/B25003.do", replace


// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
