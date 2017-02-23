          . use "$projName/$data/householdIncomeBlacksComplete.dta"

          . set obs 106
          number of observations (_N) was 98, now 106

Sets observations in the datset to 106 to match the master dataset.

          . replace tractid = 29510101300 in 99
          (1 real change made)

          . replace tractid = 29510102100 in 100
          (1 real change made)

          . replace tractid = 29510103700 in 101
          (1 real change made)

          . replace tractid = 29510103800 in 102
          (1 real change made)

          . replace tractid = 29510104200 in 103
          (1 real change made)

          . replace tractid = 29510114102 in 104
          (1 real change made)

          . replace tractid = 29510115100 in 105
          (1 real change made)

          . replace tractid = 29510116200 in 106
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1013" in 99
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1021" in 100
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1037" in 101
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1038" in 102
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1042" in 103
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1141.02" in 104
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1151" in 105
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1162" in 106
          (1 real change made)

Adds the missing census tract to the dataset.

          . quietly log close markdoc
