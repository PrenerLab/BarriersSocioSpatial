// ==========================================================================

// 2015 5YR ACS Variables File Merge

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

// check to see if appropriate directories exist

global projName "acs2015FileMerge"
global markDown "householdIncomeBlacksComplete"
global data "Data"
global output "Output"

capture mkdir $projName

capture mkdir "$projName/$output"
capture mkdir "$projName/CodeArchive"
capture mkdir "$projName/$data"



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$output/$projName.txt", text replace

// start MarkDoc log
quietly log using "$projName/$output/$markDown-markdoc.smcl", replace smcl name(markdoc)

// ==========================================================================

/*
file name - acs2015FileMerge.do

project name - 2015 ACS 5 Year Estimates Merge

purpose - This do-file merges all of the 2015 ACS variable datasets.

created - February 6, 2017

updated - February 8, 2017

author - Jes Stevens
*/

// ==========================================================================

/*
full description - This do file merges the 2015 5 year estimate datasets into one dataset.

*/

/*
updates - Addition of the files that now have the complete census tracts that were previously missing from the 2015 ACS Tables.
*/
// ==========================================================================

/*
superordinates  -
- employmentStatus.dta
- medianHouseholdIncome.dta
- occupiedHousingUnits.dta
- perCapitaIncome.dta
- povertyStatus.dta
- povertyStatusBlacks.dta
- povertyStatusWhites.dta
- totalPopulation.dta
- vacantHousingUnits.dta
- householdIncomeBlacksComplete.dta
- householdIncomeWhitesComplete.dta
- medianHomeValueComplete.dta
- medianRentComplete.dta
*/

/*
subordinates -
- acs2015.dta
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================


/***
This loop saves the employmentStatus.dta dataset as the new master dataset named acs2015Missing.dta.
It then merges medianHouseholdIncome.dta, occupiedHousingUnits.dta, perCapitaIncome.dta,
povertyStatus.dta, povertyStatusBlacks.dta, povertyStatusWhites.dta, totalPopulation.dta, vacantHousingUnits.dta.
***/

local dataPath "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/acsVariableRename2015/dtaFiles"
local i = 1
use "`dataPath'/employmentStatus.dta"
save "$projName/acs2015.dta", replace
local fileNames "medianHouseholdIncome.dta occupiedHousingUnits.dta perCapitaIncome.dta povertyStatus.dta povertyStatusBlacks.dta povertyStatusWhites.dta totalPopulation.dta vacantHousingUnits.dta householdIncomeBlacksComplete.dta householdIncomeWhitesComplete.dta medianHomeValueComplete.dta medianRentComplete.dta"
foreach fileName in `fileNames' {
  local mergeFile : word `i' of `fileNames'
  use "$projName/acs2015.dta"
  merge 1:1 tractid using "`dataPath'/`mergeFile'"
  assert _merge == 3
  drop _merge
  save "$projName/acs2015.dta", replace
  clear
  local i = `i' + 1
}


// ==========================================================================
// ==========================================================================
// ==========================================================================

// end MarkDoc log
quietly log close markdoc

// convert MarkDoc log to Markdown
markdoc "$projName/$output/$markDown-markdoc", replace export(md) install

// copy code to code archive

copy "acs2015FileMerge.do" "$projName/CodeArchive/acs2015FileMerge.do", replace

// ==========================================================================

// standard closing options

log close _all
set more on

// ==========================================================================

exit
