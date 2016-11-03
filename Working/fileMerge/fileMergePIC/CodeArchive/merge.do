// ==========================================================================

// BarriersSocioSpatial File Merge

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

cd "/Users/`c(username)'/Documents/Working"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "fileMergePIC"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"
capture mkdir "$projName/Data"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

// ==========================================================================

/*
file name - master.do

project name - Barriers SocioSpatial Merge

purpose - This do-file runs the merge.do file.

created - October 27, 2016

updated - November 2, 2016

author - Jes Stevens
*/

// ==========================================================================

/*
full description - This do file adds a year variable to each dataset. It then merges
the sample.dta files with the fullcount.dta files. After the fullcount and sample
data files are merged it then merges these files into one dataset.

*/

// ==========================================================================

/*
superordinates  -
- fullcount1970.dta
- fullcount1980.dat
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
- stlCity40.dta
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

cd "/Users/`c(username)'/Documents/Working"
local dataPath "/Users/`c(username)'/Github Desktop/BarriersSocioSpatial/Working/fileMerge/preMergeFileCleaning"
clear
forvalues i = 1970(10)2010 {
  use "`dataPath'/fullcount`i'.dta"
  generate year = `i'
  save "fullcount`i'.dta", replace
  clear
}

forvalues i = 1970(10)2010 {
  use "`dataPath'/sample`i'.dta"
  generate year = `i'
  save "sample`i'.dta", replace
  clear
}


cd "/Users/`c(username)'/Documents/Working"
local fullNames "fullcount1970.dta fullcount1980.dta fullcount1990.dta fullcount2000.dta fullcount2010.dta"
local sampleNames "sample1970.dta sample1980.dta sample1990.dta sample2000.dta sample2010.dta"
local saveNames "stlCity1970 stlCity1980 stlCity1990 stlCity2000 stlCity2010"
local i = 1
local year = 1970
foreach fullName in `fullNames' {
  local mergeFile : word `i' of `sampleNames'
  local saveFile : word `i' of `saveNames'
  use   "`fullName'"
  merge 1:1 tractid using "`mergeFile'"
  assert _merge == 3
  drop _merge
  assert year == `year'
  save "$projName/Data/`saveFile'", replace
  clear
  local i = `i' + 1
  local year = `year' + 10
}

local i = 1
use "$projName/Data/stlCity1970.dta"
save "$projName/Data/stlCity40.dta", replace
local fileNames "stlCity1980.dta stlCity1990.dta stlCity2000.dta stlCity2010.dta"
foreach fileName in `fileNames' {
  local mergeFile : word `i' of `fileNames'
  use "$projName/Data/stlCity40.dta"
  merge 1:1 tractid using "$projName/Data/`mergeFile'"
  assert _merge == 3
  drop _merge
  save "$projName/Data/stlCity40.dta", replace
  clear
  local i = `i' + 1
}


// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive

copy "merge.do" "$projName/CodeArchive/merge.do", replace

// ==========================================================================

// standard closing options

log close _all
set more on

// ==========================================================================

exit
