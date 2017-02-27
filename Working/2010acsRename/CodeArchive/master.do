// ==========================================================================

// 2010 ACS Variable Rename

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

global sourceData "stlCity.dta"
capture confirm file "$sourceData"

if _rc==601 {
  display in red "This do-file requires that the source dataset be saved in your working folder."
  exit
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "2010acsRename"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"
capture mkdir "$projName/output"
capture mkdir "$projName/data"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/output/$projName.txt", text replace

// start MarkDoc log
quietly log using "$projName/output/$projName-markdoc.smcl", replace smcl name(markdoc)

// ==========================================================================

/*
file name - master.do

project name - SOC5050: Quantitative Analysis, Fall 2016

purpose - /*what does this do-file do?*/

created - /*what is today's date?*/

updated - /*what is today's date?*/

author - /*what is your name?*/
*/

// ==========================================================================

/*
full description -
/*enter a description of what this do-file does*/
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- /*enter the source data filename here*/.dta
*/

/*
subordinates -
- data.do
- analysis.do
*/

// ==========================================================================

// copy source data to new directory

global newData "stlCityMaster.dta"
copy $sourceData "$projName/$newData", replace

// ==========================================================================
// ==========================================================================
// ==========================================================================

use "$projName/$newData"
rename pop0a pop10a
rename nhwht0a nhwht10a
rename nhblk0a nhblk10a
rename ntv0a ntv10a
rename haw0a haw10a
rename asian0a asian10a
rename hisp0a hisp10a
rename india0a india10a
rename china0a china10a
rename filip0a filip10a
rename japan0a japan10a
rename korea0a korea10a
rename viet0a viet10a
rename ruanc0a ruanc10a
rename itanc0a itanc10a
rename geanc0a geanc10a
rename iranc0a iranc10a
rename scanc0a scanc10a
rename mex0a mex10a
rename cuban0a cuban10a
rename pr0a pr10a
rename fb0a fb10a
rename nat0a nat10a
rename n10imm0a n10imm10a
rename ag5up0a ag5up10a
rename olang0a olang10a
rename lep0a lep10a
rename rufb0a rufb10a
rename itfb0a itfb10a
rename gefb0a gefb10a
rename irfb0a irfb10a
rename scfb0a scfb10a
rename ag15up0a ag15up10a
rename mar0a mar10a
rename wds0a wds10a
rename family0a family10a
rename fhh0a fhh10a
rename ag25up0a ag25up10a
rename hs0a hs10a
rename col0a col10a
rename clf0a clf10a
rename unemp0a unemp10a
rename dflabf0a dflabf10a
rename flabf0a flabf10a
rename empclf0a empclf10a
rename prof0a prof10a
rename manuf0a manuf10a
rename semp0a semp10a
rename ag18cv0a ag18cv10a
rename vet0a vet10a
rename hh0a hh10a
rename hhw0a hhw10a
rename hhb0a hhb10a
rename hha0a hha10a
rename hhh0a hhh10a
rename hinc0a hinc10a
rename hincw0a hincw10a
rename hincb0a hincb10a
rename hinch0a hinch10a
rename incpc0a incpc10a
rename dpov0a dpov10a
rename npov0a npov10a
rename n65pov0a n65pov10a
rename dfmpov0a dfmpov10a
rename nfmpov0a nfmpov10a
rename dwpov0a dwpov10a
rename nwpov0a nwpov10a
rename dbpov0a dbpov10a
rename nbpov0a nbpov10a
rename dnapov0a dnapov10a
rename nnapov0a nnapov10a
rename dhpov0a dhpov10a
rename nhpov0a nhpov10a
rename dapov0a dapov10a
rename napov0a napov10a
rename hu0a hu10a
rename vac0a vac10a
rename ohu0a ohu10a
rename own0a own10a
rename rent0a rent10a
rename dmulti0a dmulti10a
rename multi0a multi10a
rename h30old0a h30old10a
rename h10yrs0a h10yrs10a
rename mrent0a mrent10a
rename mhmval0a mhmval10a
rename a18und0a a18und10a
rename a60up0a a60up10a
rename a75up0a a75up10a
rename agewht0a agewht10a
rename ageblk0a ageblk10a
rename agentv0a agentv10a
rename agehsp0a agehsp10a
rename ageasn0a ageasn10a
rename a15wht0a a15wht10a
rename a15blk0a a15blk10a
rename a15ntv0a a15ntv10a
rename a15hsp0a a15hsp10a
rename a15asn0a a15asn10a
rename a65wht0a a65wht10a
rename a65blk0a a65blk10a
rename a65ntv0a a65ntv10a
rename a65hsp0a a65hsp10a
rename a65asn0a a65asn10a
rename hinca0a hinca10a

label data "St. Louis City Census Data 1970-2010, ACS 2006-10, and 2011-2015 Sample Data - February 2017"
notes _dta: This dataset was taken from the Brown LTDB, it has been cleaned and labeled. The dataset notes and labels are from from LTDB codebook. Cited as John R. Logan, Zengwang Xu, and Brian Stults. 2012. "Interpolating US Decennial Census Tract Data from as Early as 1970 to 2010: A Longitudinal Tract Database" Professional Geographer, forthcoming.

// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive

copy "master.do" "$projName/CodeArchive/master.do", replace
save "$projName/$newData", replace

// ==========================================================================

quietly log using "$projName/output/$newData-CodeBook.txt", text replace ///
name(codebook)
codebook, header notes
quietly log close codebook
// end MarkDoc log
quietly log close markdoc

// convert MarkDoc log to Markdown
markdoc "$projName/output/$projName-markdoc", replace export(md) install

// standard closing options

log close _all
set more on

// ==========================================================================

exit
