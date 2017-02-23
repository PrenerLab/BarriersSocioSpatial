          . use "$projName/medianHouseholdIncomeBlacks.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 hincb15a


          . rename hd02_vd01 hincb15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable hincb15a "Median Household Income Blacks"

          . label variable hincb15aME "Median Household Income Blacks Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel hincb15a hincb15aME

          . quietly log close markdoc
