// ==========================================================================

// Poverty Status Whites

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

global sourceData "ACS_15_5YR_B17020H.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "acsVariableRename2015"
global markDown "povertyStatusWhites"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// copy source data to new directory

global newData "povertyStatusWhites.dta"
copy $sourceData "$projName/$newData", replace


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$markDown.txt", text replace

// start MarkDoc log
quietly log using "$projName/$markDown-markdoc.smcl", replace smcl name(markdoc)

// ==========================================================================

/*
file name - B17020H.do

project name - Poverty Status Whites

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
- ACS_15_5YR_B17020H.dta
*/

/*
subordinates -

*/

// ==========================================================================

// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/povertyStatusWhites.dta"
drop geoid
/***
Drops variable from set for later merge.
***/

rename geoid2 tractid
label variable tractid "TRTID10"
/***
Renames and labels variable to match variable name for later merge
***/

rename hd01_vd01 nwpov15a
rename hd02_vd01 nwpov15aME
/***
Renames variables to match variables from previous census datasets for later merge.
***/

label variable nwpov15a "Whites in Poverty"
label variable nwpov15aME "Whites in Poverty Margin of Error"
/***
Labels variable from set to match.
***/



keep tractid geodisplaylabel nwpov15a nwpov15aME

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


copy "B17020H.do" "$projName/CodeArchive/B17020H.do", replace


// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
