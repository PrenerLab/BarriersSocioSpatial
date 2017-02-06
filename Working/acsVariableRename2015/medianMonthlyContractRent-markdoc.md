          . use "$projName/medianMonthlyContractRent.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 mrent15a


          . rename hd02_vd01 mrent15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable mrent15a "Median Monthly Contract Rent"

          . label variable mrent15aME "Median Monthly Contract Rent Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel mrent15a mrent15aME

          . quietly log close markdoc
