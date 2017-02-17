          . use "$projName/vacantHousingUnits.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 hu15a


          . rename hd02_vd01 hu15aME


          . rename hd01_vd03 vac15a


          . rename hd02_vd03 vac15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable hu15a "Housing Units"

          . label variable hu15aME "Housing Units Margin of Error"

          . label variable vac15a "Vacant Housing Units"

          . label variable vac15aME "Vacant Housing Units Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel hu15a hu15aME vac15a vac15aME

          . quietly log close markdoc
