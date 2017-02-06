          . use "$projName/occupiedHousingUnits.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd02 own15a


          . rename hd02_vd02 own15aME


          . rename hd01_vd03 rent15a


          . rename hd02_vd03 rent15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable own15a "Owner Occupied Housing Units"

          . label variable own15aME "Owner Occupied Housing Units Margin of Error"

          . label variable rent15a "Renter Occupied Housing Units"

          . label variable rent15aME "Renter Occupied Housing Units Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel own15a own15aME rent15a rent15aME

          . quietly log close markdoc
