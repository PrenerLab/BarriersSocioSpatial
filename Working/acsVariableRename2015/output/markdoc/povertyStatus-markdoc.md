          . use "$projName/povertyStatus.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 npov15a


          . rename hd02_vd01 npov15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable npov15a "Persons in Poverty"

          . label variable npov15aME "Persons in Poverty Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel npov15a npov15aME

          . quietly log close markdoc
