          . use "$projName/totalPopulation.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 pop15a


          . rename hd02_vd01 pop15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable pop15a "Total Population"

          . label variable pop15aME "Total Population Margin of Error"

Labels variable from set to match.

          . rename hd01_vd03 nhwht15a


          . rename hd02_vd03 nhwht15aME


          . label variable nhwht15a "Persons of White Race, Not Hispanic"

          . label variable nhwht15aME "Persons of White Race, Not Hispanic Margin of Error"

          . rename hd01_vd04 nhblk15a


          . rename hd02_vd04 nhblk15aME


          . label variable nhblk15a "Persons of Black Race, Not Hispanic"

          . label variable nhblk15aME "Persons of Black Race, Not Hispanic Margin of Error"

          . keep tractid pop15a pop15aME nhwht15a nhwht15aME nhblk15a nhblk15aME geodisplaylabel

          . quietly log close markdoc
