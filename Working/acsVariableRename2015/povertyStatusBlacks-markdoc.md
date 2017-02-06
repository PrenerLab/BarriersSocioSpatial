          . use "$projName/povertyStatusBlacks.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 nbpov15a


          . rename hd02_vd01 nbpov15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable nbpov15a "Blacks in Poverty"

          . label variable nbpov15aME "Blacks in Poverty Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel nbpov15a nbpov15aME

          . quietly log close markdoc
