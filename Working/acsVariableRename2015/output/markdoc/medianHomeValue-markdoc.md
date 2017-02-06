          . use "$projName/medianHomeValue.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd01 mhmval15a


          . rename hd02_vd01 mhmval15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable mhmval15a "Median Home Value"

          . label variable mhmval15aME "Median Home Value"

Labels variable from set to match.

          . keep tractid geodisplaylabel mhmval15a mhmval15aME

          . quietly log close markdoc
