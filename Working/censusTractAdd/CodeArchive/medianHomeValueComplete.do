// ==========================================================================

// Missing Census Tracts - Median Home Value

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

global sourceData "medianHomeValue.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "censusTractAdd"
global markDown "medianHomeValueComplete"
global data "Data"
global output "Output"
capture mkdir $projName

capture mkdir "$projName/$output"
capture mkdir "$projName/CodeArchive"
capture mkdir "$projName/$data"

// copy source data to new directory

global newData "medianHomeValueComplete.dta"
copy $sourceData "$projName/$data/$newData", replace

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$output/$markDown.txt", text replace

// start MarkDoc log
quietly log using "$projName/$output/$markDown-markdoc.smcl", replace smcl name(markdoc)
// ==========================================================================

/*
file name - medianHomeValueComplete.do

project name - Median Home Value

purpose - Adds missing census tracts.

created - Febuary 7, 2017

updated - Febuary 7, 2017

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do file adds the missing census tracts to the median home value variable.
*/

/*
updates -
none
*/


// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/$data/medianHomeValueComplete.dta"

set obs 106
/***
Sets observations in the datset to 106 to match the master dataset.
***/

replace tractid = 29510121100 in 106
replace geodisplaylabel = "Census Tract 1211" in 106
/***
Adds the missing census tract to the dataset.
***/

// ==========================================================================
// ==========================================================================
// ==========================================================================

// end MarkDoc log
quietly log close markdoc

// convert MarkDoc log to Markdown
markdoc "$projName/$output/$markDown-markdoc", replace export(md) install

// save altered data
save "$projName/$data/$newData", replace

// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive


copy "medianHomeValueComplete.do" "$projName/CodeArchive/medianHomeValueComplete.do", replace


// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
