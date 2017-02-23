// ==========================================================================

// Barriers SocioSpatial ACS Variables Master Merge

// ==========================================================================

// standard opening options

version 14
log close _all
graph drop _all
clear all
set more off
set linesize 80

// ==========================================================================

/*
file name - masterMerge.do

project name - Barriers SocioSpatial

purpose - This .do merges the missing ACS dataset to the master census dataset.

created - February 8, 2017

updated - February 8, 2017

author - Jes Stevens
*/

// ==========================================================================
// ==========================================================================

/*
superordinates  -
- acs2015.dta
*/

/*
subordinates -
none
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================



cd "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working"

global sourceData "stlCity40Census.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}


// ==========================================================================
// ==========================================================================
// ==========================================================================


global projName "masterMerge"
global output "output"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"
capture mkdir "$projName/$output"

log using "$projName/$output/$projName.txt", text replace


global newData "stlCity.dta"
copy $sourceData "$projName/$newData", replace

// start MarkDoc log
quietly log using "$projName/$output/$projName-markdoc.smcl", ///
  replace smcl name(markdoc)

// OFF
// ==========================================================================
// ON

local dataPath "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/acs2015FileMerge"
/***
Sets a local macro for the dataPath for merging the files to create one master dataset. 
***/

use "$projName/$newData"

merge 1:1 tractid using "`dataPath'/acs2015.dta"
/***
This merges the 2015 ACS data to the master dataset that was cleaned from the LTDB Brown dataset.
***/

assert _merge == 3
/***
This command asserts that the using data matches the master data.
***/

drop _merge
drop geodisplaylabel
/***
Drops unnecessary variables from the dataset.
***/

save "$projName/$newData", replace


// OFF
// ==========================================================================

// end MarkDoc log
quietly log close markdoc

// convert MarkDoc log to Markdown
markdoc "$projName/$output/$projName-markdoc", ///
  replace export(md) install

// save altered data
  save "$projName/$newData", replace
  // copy code to code archive


  copy "masterMerge.do" "$projName/CodeArchive/masterMerge.do", replace

// ==========================================================================
// ==========================================================================
// ==========================================================================

// exit
