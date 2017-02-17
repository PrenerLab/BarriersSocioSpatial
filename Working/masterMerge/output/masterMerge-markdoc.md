          . local dataPath "/Users/NStevens/Github Desktop/BarriersSocioSpatial/Working/acs2015FileMerge"

Sets a local macro for the dataPath for merging the files to create one
master dataset.

          . use "$projName/$newData"
          (St. Louis City Census Data 1970-2010 and ACS 2006-10 Sample Data - December 2016)

          . merge 1:1 tractid using "`dataPath'/acs2015.dta"

              Result                           # of obs.
              -----------------------------------------
              not matched                             0
              matched                               106  (_merge==3)
              -----------------------------------------

This merges the 2015 ACS data to the master dataset that was cleaned
from the LTDB Brown dataset.

          . assert _merge == 3

This command asserts that the using data matches the master data.

          . drop _merge

          . drop geodisplaylabel

Drops unnecessary variables from the dataset.

          . save "$projName/$newData", replace
          file masterMerge/stlCity.dta saved

          . quietly log close markdoc
