          . use "$projName/$data/householdIncomeWhitesComplete.dta"

          . set obs 106
          number of observations (_N) was 100, now 106

Sets observations in the datset to 106 to match the master dataset.

          . replace tractid = 29510107300 in 101
          (1 real change made)

          . replace tractid = 29510108200 in 102
          (1 real change made)

          . replace tractid = 29510108300 in 103
          (1 real change made)

          . replace tractid = 29510112200 in 104
          (1 real change made)

          . replace tractid = 29510118100 in 105
          (1 real change made)

          . replace tractid = 29510120200 in 106
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1073" in 101
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1082" in 102
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1083" in 103
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1122" in 104
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1181" in 105
          (1 real change made)

          . replace geodisplaylabel = "Census Tract 1202" in 106
          (1 real change made)

Adds the missing census tract to the dataset.

          . quietly log close markdoc
