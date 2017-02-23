          . use "$projName/perCapitaIncome.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 incpc15a


          . rename hd02_vd01 incpc15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable incpc15a "Per Capita Income"

          . label variable incpc15aME "Per Capita Income Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel incpc15a incpc15aME

          . quietly log close markdoc
