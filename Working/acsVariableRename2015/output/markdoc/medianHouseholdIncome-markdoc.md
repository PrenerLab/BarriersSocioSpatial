          . use "$projName/medianHouseholdIncome.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 hinc15a


          . rename hd02_vd01 hinc15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable hinc15a "Median Household Income"

          . label variable hinc15aME "Median Household Income Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel hinc15a hinc15aME

          . quietly log close markdoc
