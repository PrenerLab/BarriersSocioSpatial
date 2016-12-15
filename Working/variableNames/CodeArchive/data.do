// ==========================================================================

// Barriers Socio Spatial

// ==========================================================================

// standard opening options

set more off
set linesize 80

// ==========================================================================
// ==========================================================================

/*
full description -
This do file adds variable names to the Census Dataset. It also creates a log book, codebook, and markdown file.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- stlCity40.dta
- master.do
*/

/*
subordinates -
none
*/

// ==========================================================================

// open data
use "$projName/$newData"

// ==========================================================================
// ==========================================================================
// ==========================================================================

// start MarkDoc log
quietly log using "$projName/$projName-markdoc.smcl", replace smcl name(markdoc)

// OFF
// ==========================================================================
// ON


/***

#   Barrier Socio Spatial

## Variable Labeling

In its current form the combined datasets do not have variable labels. This do
file adds variable label names to each iteration of the variable.

By using loops, the following code addes a variable label to each variable in
the variable list.


***/

label variable year "Year"
label variable state "State"
label variable county "County"

foreach var of varlist pop70 pop80 pop90 pop00 pop10 pop0a {
label variable `var' "Total Population"
}

label variable white70 "Persons of White Race"

foreach var of varlist nhwht80 nhwht90 nhwht00 nhwht10 nhwht0a {
label variable `var' "Persons of White Race, Not Hispanic Origin"
}

label variable black70 "Persons of Black Race"

foreach var of varlist  nhblk80 nhblk90 nhblk00 nhblk10 nhblk0a {
label variable `var' "Persons of Black Race, Not Hispanic Origin"
}

foreach var of varlist  hisp80 hisp90 hisp00 hisp10 hisp0a {
label variable `var' "Persons of Hispanic Origin"
}

foreach var of varlist  ntv80 ntv90 ntv00 ntv10 ntv0a {
label variable `var' "Persons of Native American Race"
}

foreach var of varlist  asian70 asian80 asian90 asian00 asian10 asian0a {
label variable `var' "Persons of Asian Race and Pacific Islander"
}

foreach var of varlist  haw70 haw80 haw90 haw00 haw10 haw0a {
label variable `var' "Persons of Hawaiian Race"
}

foreach var of varlist  india70 india80 india90 india00 india10 india0a {
label variable `var' "Persons of Asian Indian Race"
}

foreach var of varlist  china70 china80 china90 china00 china10 china0a {
label variable `var' "Persons of Chinese Race"
}

foreach var of varlist  filip70 filip80 filip90 filip00 filip10 filip0a {
label variable `var' "Persons of Filipino Race"
}

foreach var of varlist  japan70 japan80 japan90 japan00 japan10 japan0a {
label variable `var' "Persons of Japanese Race"
}

foreach var of varlist  korea70 korea80 korea90 korea00 korea10 korea0a {
label variable `var' "Persons of Korean Race"
}


foreach var of varlist  viet80 viet90 viet00 viet10 viet0a {
label variable `var' "Persons of Vietnamese Race"
}


foreach var of varlist  agewht70 agewht80 agewht90 agewht00 agewht10 agewht0a {
label variable `var' "White Population with Known Age Distribution"
}

foreach var of varlist  a15wht70 a15wht80 a15wht90 a15wht00 a15wht10 a15wht0a {
label variable `var' "0-15 years old of White Race"
}

notes a15wht80: White Race 0-14 years old
notes a15wht0a: White Race 0-14 years old

foreach var of varlist  a60wht70 a60wht80 a60wht90 a60wht00 a60wht10 {
label variable `var' "60 Years and Older of White Race"
}

label variable a65wht0a "65 Years and Older of Non-Hispanic Whites"

foreach var of varlist  ageblk70 ageblk80 ageblk90 ageblk00 ageblk10 ageblk0a {
label variable `var' "Black Population with Known Age Distribution"
}

foreach var of varlist  a15blk70 a15blk80 a15blk90 a15blk00 a15blk10 a15blk0a {
label variable `var' "0-15 years old of Black Race"
}

notes a15blk80: Black Race 0-14 years old
notes a15blk0a: Black Race 0-14 years old

foreach var of varlist  a60blk70 a60blk80 a60blk90 a60blk00 a60blk10 {
label variable `var' "60 years and older of Black Race"
}
label variable a65blk0a "65 Years and Older of Black Race"

foreach var of varlist  agehsp80 agehsp90 agehsp00 agehsp10 agehsp0a {
label variable `var' "Hispanic Population with Known Age Distribution"
}

foreach var of varlist  a15hsp80 a15hsp90 a15hsp00 a15hsp10 a15hsp0a {
label variable `var' "0-15 years old of Hispanic Origins"
}

notes a15hsp80: Hispanic Origins 0-14 years old
notes a15hsp0a: Hispanic Origins 0-14 years old

foreach var of varlist  a60hsp80 a60hsp90 a60hsp00 a60hsp10 {
label variable `var' "60 years and older persons of Hispanic Origins"
}

label variable a65hsp0a "65 years and older Persons of Hispanic Origins"

foreach var of varlist  agentv80 agentv90 agentv00 agentv10 agentv0a {
label variable `var' "Native American Population with Known Age Distribution"
}

foreach var of varlist  a15ntv80 a15ntv90 a15ntv00 a15ntv10 a15ntv0a {
label variable `var' "0-15 years old of Native American Race"
}

notes a15ntv80: Native American Race 0-14 years old
notes a15ntv0a: Native American Race 0-14 years old

foreach var of varlist  a60ntv80 a60ntv90 a60ntv00 a60ntv10 {
label variable `var' "60 years and Older Persons of Native American Race"
}

label variable a65ntv0a "65 Years and Older of Native American Race"

foreach var of varlist  ageasn80 ageasn90 ageasn00 ageasn10 ageasn0a {
label variable `var' "Asian and Pacific Islander Population with Known Age Distribution"
}

foreach var of varlist  a15asn80 a15asn90 a15asn00 a15asn10 a15asn0a {
label variable `var' "0-15 years old of Asians and Pacific Islanders"
}

notes a15asn80: Asians and Pacific Islanders 0-14 years old
notes a15asn0a: Asians and Pacific Islanders 0-14 years old

foreach var of varlist  a60asn80 a60asn90 a60asn00 a60asn10 {
label variable `var' "60 years and Older Persons of Asians and Pacific Islanders"
}

label variable a65asn0a "65 Years and Older of Asians and Pacific Islanders"

/***
### Variable Group 2: Ethnicity and Immigration
***/

label variable pop70sp1 "Total Population from sample-based data"
notes pop70sp1: Variable serves as the denominator for calculating the percentages of foreign-born and naturalized foreign-born (only counted in sample-based data in 1970)

label variable pop70sp2 "Total Population from sample-based data"
notes pop70sp2: Variable serves as the denominator for calculating the percentage of specific Hispanic origin groups (Mexicans, Cubans, and Puerto Ricans), European ancestry, and European foreign-born groups, and are only counted in sample-based data in 1970.

foreach var of varlist pop80sf3 pop90sf3 pop00sf3 {
label variable `var' "Total population from sample-based data"
notes `var': In 1980, this variable serves as the denominator for calculating the percentages of specific European ancestry groups, which are only counted in the sample-based data in 1980. In 1990, this variable serves as the denominator for calculating the percentages of specific European ancestry groups, total foreign born, total foreign-born immigrated in the past 10 years, and total naturalized foreign-born, which are only counted in the sample-based data in 1990.
}

foreach var of varlist pop80sf4 pop90sf4 {
label variable `var' "Total population from sample-based data"
notes `var': In 1980, this variable serves as the denominator for calculating the percentages of specific European foreign-born groups, total foreign-born immigrated in the past 10 years, and total naturalized foreign-born, which are only counted in the sample-based data in 1980. In 1990, this variable serves as the denominator for calculating the percentages of specific European foreign-born groups, which are only counted in the sample-based data in 1990.
}

foreach var of varlist  mex70 mex80 mex90 mex00 mex10 mex0a {
label variable `var' "Mexicans"
}

foreach var of varlist  cuban70 cuban80 cuban90 cuban00 cuban10 cuban0a {
label variable `var' "Cubans"
}

foreach var of varlist  pr70 pr80 pr90 pr00 pr10 pr0a {
label variable `var' "Puerto Ricans"
}


foreach var of varlist ruanc70 ruanc80 ruanc90 ruanc00 ruanc0a {
label variable `var' "Persons of Russian/USSR parentage or Ancestry"
}


foreach var of varlist itanc70 itanc80 itanc90 itanc00 itanc0a {
label variable `var' "Persons of Italian parentage or Ancestry"
}


foreach var of varlist geanc70 geanc80 geanc90 geanc00 geanc0a {
label variable `var' "Persons of German parentage or Ancestry"
}


foreach var of varlist iranc70 iranc80 iranc90 iranc00 iranc0a {
label variable `var' "Persons of Irish parentage or Ancestry"
}


foreach var of varlist scanc70 scanc80 scanc90 scanc00 scanc0a {
label variable `var' "Persons of Scandinavian parentage or Ancestry"
}



label variable dfb80 "Total population from sample-based data"
notes dfb80: This variable serves as the denominator for calculating the percentages of total foreign-born, which is only counted in the sample-based data in 1980.


foreach var of varlist fb70 fb80 fb90 fb00 fb0a {
label variable `var' "Foreign-born"
}


foreach var of varlist n10imm70 n10imm80 n10imm90 n10imm00 n10imm0a {
label variable `var' "Recent Immigrants (within the past 10 years)"
}


foreach var of varlist  nat70 nat80 nat90 nat00 nat0a {
label variable `var' "Naturalized Foreign-Born"
notes `var': Count is the category of “foreign-born, naturalized” from the “citizenship” table.
}

foreach var of varlist ag5up80 ag5up90 ag5up00 ag5up0a {
label variable `var' "Persons 5 years and Over"
notes `var': Variable serves as the universe for tabulating individuals’ English speaking ability.
}

foreach var of varlist olang80 olang90 olang00 olang0a {
label variable `var' "Persons who speak language other than English at home"
notes `var': The universe is persons 5 years and older.
}

foreach var of varlist lep80 lep90 lep00 lep0a {
label variable `var' "Persons who speak English not well"
notes `var': The universe is persons 5 years and older. The numerator is the sum of "Not well" and "Not at all" categories from the table, "Language Other than English Spoken at Home by Ability to Speak English."
}

foreach var of varlist  rufb70 rufb80 rufb90 rufb00 rufb0a {
label variable `var' "Persons who were born in Russia/ USSR"
}

foreach var of varlist  itfb70 itfb80 itfb90 itfb00 itfb0a {
label variable `var' "Persons who were born in Italy"
}

foreach var of varlist  gefb70 gefb80 gefb90 gefb00 gefb0a {
label variable `var' "Persons who were born in Germany"
}

foreach var of varlist  irfb70 irfb80 irfb90 irfb00 irfb0a {
label variable `var' "Persons who were born in Ireland"
}

foreach var of varlist  scfb70 scfb80 scfb90 scfb00 scfb0a {
label variable `var' "Persons who were born in Ireland"
}

/***
### Variable Group 3: Socioeconomic Status
***/

foreach var of varlist  ag25up70 ag25up80 ag25up90 ag25up00 ag25up0a {
label variable `var' "Population 25 years and over"
}

foreach var of varlist  hs70 hs80 hs90 hs00 hs0a {
label variable `var' "Persons with high school degree or less"
}

foreach var of varlist  col70 col80 col90 col00 col0a {
label variable `var' "Persons with at least a 4 year college degree"
}

foreach var of varlist  clf70 clf80 clf90 clf00 clf0a {
label variable `var' "Civilian labor force 16 years and over"
}

foreach var of varlist  unemp70 unemp80 unemp90 unemp00 unemp0a {
label variable `var' "Unemployed"
}

foreach var of varlist  dflabf70 dflabf80 dflabf90 dflabf00 dflabf0a {
label variable `var' "Females 16 years and over, except in Armed Forces"
}


foreach var of varlist  flabf70 flabf80 flabf90 flabf00 flabf0a {
label variable `var' "Females in labor force"
}


foreach var of varlist  empclf70 empclf80 empclf90 empclf00 empclf0a {
label variable `var' "Employed persons 16 years and over"
}

foreach var of varlist  prof70 prof80 prof90 prof00 prof0a {
label variable `var' "Professional employees (by occupations)"
}

foreach var of varlist  manuf70 manuf80 manuf90 manuf00 manuf0a {
label variable `var' "Manufacturing employees (by industries)"
}

foreach var of varlist  semp70 semp80 semp90 semp00 semp0a {
label variable `var' "Self-employed"
}

foreach var of varlist  ag16cv70 ag16cv80 ag16cv90 {
label variable `var' "Civilian population 16 years and over"
}

foreach var of varlist  ag18cv00 ag18cv0a {
label variable `var' "Self-employed"
}

foreach var of varlist  vet70 vet80 vet90 vet00 vet0a {
label variable `var' "Veterans"
}

foreach var of varlist  cni16u70 cni16u80 cni16u90 cni16u00 {
label variable `var' "Civilian non-institutionalized persons 16-64 years old"
}

notes cni16u70: In 1970, Persons 16-64 Years Old Not Inmates and Not Attending School.
notes cni16u80: In 1980, Non-institutional Persons 16 to 64 Years.
notes cni16u90: In 1990, Civilian Non-institutionalized persons 16 years and over.
notes cni16u00: In 2000, Civilian Non-institutionalized Population 16 to 64 Years.

foreach var of varlist  dis70 dis80 dis90 dis00 {
label variable `var' "Disabled"
}

foreach var of varlist  hinc70 hinc80 hinc90 hinc00 hinc0a {
label variable `var' "Median household income"
}

foreach var of varlist  hh70 hh80 hh90 hh00 hh0a {
label variable `var' "Total households in sample-based data"
}

foreach var of varlist  hincw80 hincw90 hincw00 hincw0a {
label variable `var' "Median household income for whites"
}

foreach var of varlist  hhw80 hhw90 hhw00 hhw0a {
label variable `var' "Total white households in sample-based data"
}

foreach var of varlist  hincb80 hincb90 hincb00 hincb0a {
label variable `var' "Median household income for blacks"
}

foreach var of varlist  hhb80 hhb90 hhb00 hhb0a {
label variable `var' "Total black households in sample-based data"
}

foreach var of varlist  hinch80 hinch90 hinch00 hinch0a {
label variable `var' "Median household income for Hispanics"
}

foreach var of varlist  hhh80 hhh90 hhh00 hhh0a {
label variable `var' "Total Hispanic households in sample-based data"
}

foreach var of varlist  hinca80 hinca90 hinca00 hinca0a {
label variable `var' "Median household income for Asians and Pacific Islanders"
}

foreach var of varlist  hha80 hha90 hha00 hha0a {
label variable `var' "Total Asian/Pacific Islander households in sample-based data"
}

foreach var of varlist  incpc70 incpc80 incpc90 incpc00 incpc0a {
label variable `var' "Per capita income"
}

foreach var of varlist  dpov70 dpov80 dpov90 dpov00 dpov0a {
label variable `var' "Persons for whom poverty status is determined"
}

foreach var of varlist  npov70 npov80 npov90 npov00 npov0a {
label variable `var' "Persons in poverty"
}

foreach var of varlist  n65pov70 n65pov80 n65pov90 n65pov00 n65pov0a {
label variable `var' "Persons 65 years and older in poverty"
}

foreach var of varlist  dfmpov70 dfmpov80 dfmpov90 dfmpov00 dfmpov0a {
label variable `var' "Families for whom poverty status is determined"
}

foreach var of varlist  nfmpov70 nfmpov80 nfmpov90 nfmpov00 nfmpov0a {
label variable `var' "Families with children in poverty"
}

foreach var of varlist  dwpov70 dwpov80 dwpov90 dwpov00 dwpov0a {
label variable `var' "White persons for whom poverty status is determined"
}

foreach var of varlist  nwpov70 nwpov80 nwpov90 nwpov00 nwpov0a {
label variable `var' "whites in poverty"
}

foreach var of varlist  dbpov70 dbpov80 dbpov90 dbpov00 dbpov0a {
label variable `var' "Black persons for whom poverty status is determined"
}

foreach var of varlist  nbpov70 nbpov80 nbpov90 nbpov00 nbpov0a {
label variable `var' "Blacks in poverty"
}

foreach var of varlist  dhpov80 dhpov90 dhpov00 dhpov0a {
label variable `var' "Hispanics for whom poverty status is determined"
}

foreach var of varlist  nhpov80 nhpov90 nhpov00 nhpov0a {
label variable `var' "Hispanics in poverty"
}

foreach var of varlist  dnapov80 dnapov90 dnapov00 dnapov0a {
label variable `var' "Native American for whom poverty status is determined"
}

foreach var of varlist  nnapov80 nnapov90 nnapov00 nnapov0a {
label variable `var' "Native Americans in poverty"
}

foreach var of varlist  dapov80 dapov90 dapov00 dapov0a {
label variable `var' "Asians and Pacific Islanders for whom poverty status is determined"
}

foreach var of varlist  napov80 napov90 napov00 napov0a {
label variable `var' "Asians and Pacific Islanders in poverty"
}

/***
### Variable Group 3: Housing, Age, and Marital Status
***/

foreach var of varlist  hu70 hu80 hu90 hu00 hu10 hu0a {
label variable `var' "Housing Units"
}

foreach var of varlist  vac70 vac80 vac90 vac00 vac10 vac0a {
label variable `var' "Vacant Housing Units"
}

foreach var of varlist  ohu70 ohu80 ohu90 ohu00 ohu10 ohu0a {
label variable `var' "Occupied Housing Units"
}

foreach var of varlist  own70 own80 own90 own00 own10 own0a {
label variable `var' "Owner-occupied housing units"
}

foreach var of varlist  rent70 rent80 rent90 rent00 rent10 rent0a {
label variable `var' "Renter-occupied housing units"
}

foreach var of varlist  dmulti70 dmulti80 dmulti90 dmulti00 dmulti0a {
label variable `var' "Housing units"
notes `var': This variable serves as the denominator for calculating the percentage of housing units in multi-unit structures. In 1970 and 1980, the universe is "all year-round housing units (occupied units plus vacant year-round)."
}

foreach var of varlist  multi70 multi80 multi90 multi00 multi0a {
label variable `var' "Housing units in multi-unit structures"
}

foreach var of varlist  hu70sp hu80sp hu90sp hu00sp {
label variable `var' "Housing units in sample-based data"
}

foreach var of varlist  mhmval70 mhmval80 mhmval90 mhmval00 mhmval0a {
label variable `var' "Median home value"
}

foreach var of varlist  mrent70 mrent80 mrent90 mrent00 mrent0a {
label variable `var' "Median monthly contract rent"
}

foreach var of varlist h30old70 h30old80 h30old90 h30old00 h30old0a {
label variable `var' "Structures built more than 30 years ago"
}

foreach var of varlist  ohu70sp ohu80sp ohu90sp ohu00sp {
label variable `var' "Occupied Housing Units in sample-based data"
}

foreach var of varlist h10yrs70 h10yrs80 h10yrs90 h10yrs00 h10yrs0a {
label variable `var' "Household heads moved into unit less than 10 years ago"
}

foreach var of varlist  a18und70 a18und80 a18und90 a18und00 a18und10 a18und0a {
label variable `var' "Persons age 17 years and under"
}

foreach var of varlist  a60up70 a60up80 a60up90 a60up00 a60up10 a60up0a {
label variable `var' "Persons age 60 years and over"
}

foreach var of varlist  a75up70 a75up80 a75up90 a75up00 a75up10 a75up0a {
label variable `var' "Persons age 75 years and over"
}


foreach var of varlist  ag15up70 ag15up80 ag15up90 ag15up00 ag15up0a {
label variable `var' "Persons age 15 years and over"
}


foreach var of varlist  mar70 mar80 mar90 mar00 mar0a {
label variable `var' "Currently married (excluding separated)"
}

foreach var of varlist  wds70 wds80 wds90 wds00 wds0a {
label variable `var' "Widowed, Divorced, and Separated"
}

foreach var of varlist family70 family80 family90 family00 family10 family0a {
label variable `var' "Total Families"
}

foreach var of varlist fhh70 fhh80 fhh90 fhh00 fhh10 fhh0a {
label variable `var' "Female-headed families with children"
}

label data "St. Louis City Census Data 1970-2010 and ACS 2006-10 Sample Data - December 2016"
notes _dta: This dataset was taken from the Brown LTDB, it has been cleaned and labeled. The dataset notes and labels are from from LTDB codebook. Cited as John R. Logan, Zengwang Xu, and Brian Stults. 2012. "Interpolating US Decennial Census Tract Data from as Early as 1970 to 2010: A Longitudinal Tract Database" Professional Geographer, forthcoming.


// OFF
// ==========================================================================

quietly log using "$projName/$projName-Index.txt", text replace name(index)
describe
quietly log close index

quietly log using "$projName/$projName-CodeBook.txt", text replace ///
name(codebook)
codebook, header notes
quietly log close codebook


// end MarkDoc log
quietly log close markdoc


// convert MarkDoc log to Markdown
markdoc "$projName/$projName-markdoc", replace export(md) install

// ==========================================================================
// ==========================================================================
// ==========================================================================

// save altered data
save "$projName/$newData", replace

// ==========================================================================

// exit
