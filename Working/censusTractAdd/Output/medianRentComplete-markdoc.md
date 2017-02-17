          . use "$projName/$data/medianRentComplete.dta"

          . set obs 106
          number of observations (_N) was 105, now 106

Sets observations in the datset to 106 to match the master dataset.

          . replace tractid = 29510127400 in 106
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1274" in 106
          (1 real change made)

Adds the missing census tract to the dataset.

          . quietly log close markdoc
