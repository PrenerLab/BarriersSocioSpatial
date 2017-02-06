          . use "$projName/employmentStatus.dta"

          . drop geoid

Drops variable from set for later merge.

          . rename geoid2 tractid


          . label variable tractid "TRTID10"

Renames and labels variable to match variable name for later merge

          . rename hd01_vd03 clf15a


          . rename hd02_vd03 clf15aME


          . rename hd01_vd05 unemp15a


          . rename hd02_vd05 unemp15aME

Renames variables to match variables from previous census datasets for
later merge.

          . label variable clf15a "Civilian Labor Force 16 Years and Over"

          . label variable clf15aME "Civilian Labor Force 16 Years and Over Margin of Error"

          . label variable unemp15a "Unemployed"

          . label variable unemp15aME "Unemployed Margin of Error"

Labels variable from set to match.

          . keep tractid geodisplaylabel clf15a clf15aME unemp15a unemp15aME

          . quietly log close markdoc
