          . use "$projName/medianHouseholdIncomeWhites.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 hincw15a


          . rename hd02_vd01 hincw15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable hincw15a "Median Household Income Whites"

          . label variable hincw15aME "Median Household Income Whites Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel hincw15a hincw15aME

          . quietly log close markdoc
