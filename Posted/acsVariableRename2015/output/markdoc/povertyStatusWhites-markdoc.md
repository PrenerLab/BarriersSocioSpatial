          . use "$projName/povertyStatusWhites.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 nwpov15a


          . rename hd02_vd01 nwpov15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable nwpov15a "Whites in Poverty"

          . label variable nwpov15aME "Whites in Poverty Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel nwpov15a nwpov15aME

          . quietly log close markdoc
