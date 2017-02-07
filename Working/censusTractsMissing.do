
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

global projName "missingCensusTract"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

local dataPath "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/acs2015FileMerge"
local census "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/acsVariableRename2015/dtaFiles"
local i = 1
use "`dataPath'/acs2015.dta"
save "$projName/missingCensusTract.dta", replace
local fileNames "medianMonthlyContractRent.dta"
foreach fileName in `fileNames' {
  local mergeFile : word `i' of `fileNames'
  use "$projName/missingCensusTract.dta"
  merge 1:1 tractid using "`census'/`mergeFile'"
  assert _merge == 3
  drop _merge
  save "$projName/missingCensusTract.dta", replace
  clear
  local i = `i' + 1
}



// ==========================================================================

// standard closing options

log close _all
set more on

// ==========================================================================

exit
