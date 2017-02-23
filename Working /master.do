// ==========================================================================

// Initial Data Cleaning

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

cd "/Users/`c(username)'/Documents/SLU/PrenerLab/Working"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "LTDBClean"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

// ==========================================================================

/*
file name - master.do

project name - SOC5050: Quantitative Analysis, Fall 2016

purpose - This do file cleans the 1970, 1980, 1990, stata census files.

created - October 6th, 2016

updated - October 6th, 2016

author - Jes Stevens
*/

// ==========================================================================

/*
full description -
This do file executes the data cleaning for the 1970, 1980, 1990, census datasets. It exports the cleaned datasets as new files into the working folder.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- LTDB_Orig_1970_fullcount.dta
- LTDB_Orig_1980_fullcount.dta
- LTDB_Orig_1990_fullcount.dta
*/

/*
subordinates -

*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

// check to see if source data exists

global sourceData "LTDB_Orig_1970_fullcount.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}
// 1. execute data cleaning file
use LTDB_Orig_1970_fullcount.dta, clear
drop if state != 29
drop if county != 510

// save data to new directory


save "$projName/cleanLTDB1970.dta", replace

// ==========================================================================
// check to see if source data exists

global sourceData "LTDB_Orig_1980_fullcount.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}
// 1. execute data cleaning file
use LTDB_Orig_1980_fullcount.dta, clear
drop if state != 29
drop if county != 510

// save data to new directory


save "$projName/cleanLTDB1980.dta", replace

// ==========================================================================
// check to see if source data exists

global sourceData "LTDB_Orig_1990_fullcount.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}
// 1. execute data cleaning file
use LTDB_Orig_1990_fullcount.dta, clear
drop if state != 29
drop if county != 510

// save data to new directory

save "$projName/cleanLTDB1990.dta", replace

// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive

copy "master.do" "$projName/CodeArchive/master.do", replace

// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
