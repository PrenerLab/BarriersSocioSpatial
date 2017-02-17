This loop saves the employmentStatus.dta dataset as the new master
dataset named acs2015Missing.dta. It then merges
medianHouseholdIncome.dta, occupiedHousingUnits.dta,
perCapitaIncome.dta, povertyStatus.dta, povertyStatusBlacks.dta,
povertyStatusWhites.dta, totalPopulation.dta, vacantHousingUnits.dta.

          . local dataPath "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/acsVariableRename2015/dtaFiles"

          . local i = 1

          . use "`dataPath'/employmentStatus.dta"

          . save "$projName/acs2015.dta", replace
          file acs2015FileMerge/acs2015.dta saved

          . local fileNames "medianHouseholdIncome.dta occupiedHousingUnits.dta perCapitaIncome.dta povertyStatus.dta povertyStatusBlacks.dta povertyStatusWhites.dta totalPopulation.dta vacantHousingUnits.dta householdIncomeBlacksComplete.dta householdIncomeWhitesComplete.dta medianHomeValueComplete.dta medianRentComplete.dta"

          . foreach fileName in `fileNames' {
          .   local mergeFile : word `i' of `fileNames'
          .   use "$projName/acs2015.dta"
          .   merge 1:1 tractid using "`dataPath'/`mergeFile'"
          .   assert _merge == 3
          .   drop _merge
          .   save "$projName/acs2015.dta", replace
          .   clear
          .   local i = `i' + 1
          . }

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------
          file acs2015FileMerge/acs2015.dta saved

          . quietly log close markdoc
