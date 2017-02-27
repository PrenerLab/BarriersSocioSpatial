          . global newData "stlCityMaster.dta"

          . copy $sourceData "$projName/$newData", replace
          (note: file 2010acsRename/stlCityMaster.dta not found)

          . use "$projName/$newData"
          (St. Louis City Census Data 1970-2010 and ACS 2006-10 Sample Data - December 201

6)    . rename pop0a pop10a


          . rename nhwht0a nhwht10a


          . rename nhblk0a nhblk10a


          . rename ntv0a ntv10a


          . rename haw0a haw10a


          . rename asian0a asian10a


          . rename hisp0a hisp10a


          . rename india0a india10a


          . rename china0a china10a


          . rename filip0a filip10a


          . rename japan0a japan10a


          . rename korea0a korea10a


          . rename viet0a viet10a


          . rename ruanc0a ruanc10a


          . rename itanc0a itanc10a


          . rename geanc0a geanc10a


          . rename iranc0a iranc10a


          . rename scanc0a scanc10a


          . rename mex0a mex10a


          . rename cuban0a cuban10a


          . rename pr0a pr10a


          . rename fb0a fb10a


          . rename nat0a nat10a


          . rename n10imm0a n10imm10a


          . rename ag5up0a ag5up10a


          . rename olang0a olang10a


          . rename lep0a lep10a


          . rename rufb0a rufb10a


          . rename itfb0a itfb10a


          . rename gefb0a gefb10a


          . rename irfb0a irfb10a


          . rename scfb0a scfb10a


          . rename ag15up0a ag15up10a


          . rename mar0a mar10a


          . rename wds0a wds10a


          . rename family0a family10a


          . rename fhh0a fhh10a


          . rename ag25up0a ag25up10a


          . rename hs0a hs10a


          . rename col0a col10a


          . rename clf0a clf10a


          . rename unemp0a unemp10a


          . rename dflabf0a dflabf10a


          . rename flabf0a flabf10a


          . rename empclf0a empclf10a


          . rename prof0a prof10a


          . rename manuf0a manuf10a


          . rename semp0a semp10a


          . rename ag18cv0a ag18cv10a


          . rename vet0a vet10a


          . rename hh0a hh10a


          . rename hhw0a hhw10a


          . rename hhb0a hhb10a


          . rename hha0a hha10a


          . rename hhh0a hhh10a


          . rename hinc0a hinc10a


          . rename hincw0a hincw10a


          . rename hincb0a hincb10a


          . rename hinch0a hinch10a


          . rename incpc0a incpc10a


          . rename dpov0a dpov10a


          . rename npov0a npov10a


          . rename n65pov0a n65pov10a


          . rename dfmpov0a dfmpov10a


          . rename nfmpov0a nfmpov10a


          . rename dwpov0a dwpov10a


          . rename nwpov0a nwpov10a


          . rename dbpov0a dbpov10a


          . rename nbpov0a nbpov10a


          . rename dnapov0a dnapov10a


          . rename nnapov0a nnapov10a


          . rename dhpov0a dhpov10a


          . rename nhpov0a nhpov10a


          . rename dapov0a dapov10a


          . rename napov0a napov10a


          . rename hu0a hu10a


          . rename vac0a vac10a


          . rename ohu0a ohu10a


          . rename own0a own10a


          . rename rent0a rent10a


          . rename dmulti0a dmulti10a


          . rename multi0a multi10a


          . rename h30old0a h30old10a


          . rename h10yrs0a h10yrs10a


          . rename mrent0a mrent10a


          . rename mhmval0a mhmval10a


          . rename a18und0a a18und10a


          . rename a60up0a a60up10a


          . rename a75up0a a75up10a


          . rename agewht0a agewht10a


          . rename ageblk0a ageblk10a


          . rename agentv0a agentv10a


          . rename agehsp0a agehsp10a


          . rename ageasn0a ageasn10a


          . rename a15wht0a a15wht10a


          . rename a15blk0a a15blk10a


          . rename a15ntv0a a15ntv10a


          . rename a15hsp0a a15hsp10a


          . rename a15asn0a a15asn10a


          . rename a65wht0a a65wht10a


          . rename a65blk0a a65blk10a


          . rename a65ntv0a a65ntv10a


          . rename a65hsp0a a65hsp10a


          . rename a65asn0a a65asn10a


          . rename hinca0a hinca10a


          . label data "St. Louis City Census Data 1970-2010, ACS 2006-10, and 2011-2015 Sample Data - February 2017"
          note: label truncated to 80 characters

          . notes _dta: This dataset was taken from the Brown LTDB, it has been cleaned and labeled. The dataset notes and labels are from from LTDB codebook. Cited as John R. Logan, Zengwang Xu, and Brian Stults. 2012. "Interpolating US Decennial Census Tract Data from as Early as 1970 to 2010: A Longitudinal Tract Database" Professional Geographer, forthcoming.


          . copy "master.do" "$projName/CodeArchive/master.do", replace

          . save "$projName/$newData", replace
          file 2010acsRename/stlCityMaster.dta saved

          . quietly log using "$projName/output/$newData-CodeBook.txt", text replace ///
           name(codebook)


          . codebook, header notes

                         Dataset:  2010acsRename/stlCityMaster.dta
                      Last saved:  27 Feb 2017 14:08

                           Label:  St. Louis City Census Data 1970-2010, ACS 2006-10, and 2011-2015 Sample Data - F
             Number of variables:  602
          Number of observations:  106
                            Size:  342,168 bytes ignoring labels, etc.

          _dta:
            1.  This dataset was taken from the Brown LTDB, it has been cleaned and
                labeled. The dataset notes and labels are from from LTDB codebook. Cited
                as John R. Logan, Zengwang Xu, and Brian Stults. 2012. "Interpolating US
                Decennial Census Tract Data from as Early as 1970 to 2010: A Longitudinal
                Tract Database" Professional Geographer, forthcoming.
            2.  This dataset was taken from the Brown LTDB, it has been cleaned and
                labeled. The dataset notes and labels are from from LTDB codebook. Cited
                as John R. Logan, Zengwang Xu, and Brian Stults. 2012. "Interpolating US
                Decennial Census Tract Data from as Early as 1970 to 2010: A Longitudinal
                Tract Database" Professional Geographer, forthcoming.

          --------------------------------------------------------------------------------
          tractid                                                                  TRTID10
          --------------------------------------------------------------------------------

                            type:  numeric (double)

                           range:  [2.951e+10,2.951e+10]        units:  100
                   unique values:  106                      missing .:  0/106

                            mean:   3.0e+10
                        std. dev:   8132.85

                     percentiles:        10%       25%       50%       75%       90%
                                     3.0e+10   3.0e+10   3.0e+10   3.0e+10   3.0e+10

          --------------------------------------------------------------------------------
          state                                                                      State
          --------------------------------------------------------------------------------

                            type:  string (str2)

                   unique values:  1                        missing "":  0/106

                      tabulation:  Freq.  Value
                                     106  "MO"

          --------------------------------------------------------------------------------
          county                                                                    County
          --------------------------------------------------------------------------------

                            type:  string (str33), but longest is str14

                   unique values:  1                        missing "":  0/106

                      tabulation:  Freq.  Value
                                     106  "St. Louis city"

                         warning:  variable has embedded blanks

          --------------------------------------------------------------------------------
          tract                                                               Census Tract
          --------------------------------------------------------------------------------

                            type:  string (str20)

                   unique values:  106                      missing "":  0/106

                        examples:  "Census Tract 1053"
                                   "Census Tract 1102"
                                   "Census Tract 1154"
                                   "Census Tract 1211"

                         warning:  variable has embedded blanks

          --------------------------------------------------------------------------------
          pop70                                                           Total Population
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "3564.0000127583"
                                   "4611.99997134256"
                                   "6084.99998742613"
                                   "7210.00004338413"

          --------------------------------------------------------------------------------
          white70                                                    Persons of White Race
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "2318.00001711865"
                                   "34.0050494401548"
                                   "4495.68150507156"
                                   "6200.00003238965"

          --------------------------------------------------------------------------------
          black70                                                    Persons of Black Race
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  92                       missing "":  0/106

                        examples:  "1378"
                                   "29"
                                   "51"
                                   "7"

          --------------------------------------------------------------------------------
          asian70                               Persons of Asian Race and Pacific Islander
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  68                       missing "":  0/106

                        examples:  "14.9999904632568"
                                   "20"
                                   "3.00316855334677"
                                   "4.99615349499618"

          --------------------------------------------------------------------------------
          haw70                                                   Persons of Hawaiian Race
          --------------------------------------------------------------------------------

                            type:  string (str21)

                   unique values:  16                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "1"

          --------------------------------------------------------------------------------
          india70                                             Persons of Asian Indian Race
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  47                       missing "":  0/106

                        examples:  "10.9999494552612"
                                   "2"
                                   "3"
                                   "5"

          --------------------------------------------------------------------------------
          china70                                                  Persons of Chinese Race
          --------------------------------------------------------------------------------

                            type:  string (str21)

                   unique values:  39                       missing "":  0/106

                        examples:  "0"
                                   "1"
                                   "19"
                                   "4"

          --------------------------------------------------------------------------------
          filip70                                                 Persons of Filipino Race
          --------------------------------------------------------------------------------

                            type:  string (str21)

                   unique values:  43                       missing "":  0/106

                        examples:  "0"
                                   "1"
                                   "2"
                                   "3.32724676583894"

          --------------------------------------------------------------------------------
          japan70                                                 Persons of Japanese Race
          --------------------------------------------------------------------------------

                            type:  string (str21)

                   unique values:  41                       missing "":  0/106

                        examples:  "0"
                                   "1.00000499970747"
                                   "2"
                                   "4.72850751876831"

          --------------------------------------------------------------------------------
          korea70                                                   Persons of Korean Race
          --------------------------------------------------------------------------------

                            type:  string (str21)

                   unique values:  22                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "2"

          --------------------------------------------------------------------------------
          hu70                                                               Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [741,5207.708]               units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   2249.35
                        std. dev:   840.597

                     percentiles:        10%       25%       50%       75%       90%
                                        1292   1657.37   2197.04      2621      3175

          --------------------------------------------------------------------------------
          vac70                                                       Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  103                      missing "":  0/106

                        examples:  "157"
                                   "26"
                                   "36"
                                   "56.9760437011719"

          --------------------------------------------------------------------------------
          ohu70                                                     Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  105                      missing "":  0/106

                        examples:  "1469"
                                   "1922.92202758789"
                                   "2193"
                                   "2625"

          --------------------------------------------------------------------------------
          dmulti70                                                           Housing units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  104                      missing "":  0/106

                        examples:  "1633.14086914063"
                                   "2059"
                                   "2400.8056640625"
                                   "2822"

          dmulti70:
            1.  This variable serves as the denominator for calculating the percentage of
                housing units in multi-unit structures. In 1970 and 1980, the universe is
                "all year-round housing units (occupied units plus vacant year-round)."

          --------------------------------------------------------------------------------
          multi70                                   Housing units in multi-unit structures
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  105                      missing "":  0/106

                        examples:  "1334.96545410156"
                                   "1677"
                                   "2245"
                                   "3495"

          --------------------------------------------------------------------------------
          a18und70                                          Persons age 17 years and under
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  104                      missing "":  0/106

                        examples:  "1434.04640201107"
                                   "1988"
                                   "2659.46779441834"
                                   "5220"

          --------------------------------------------------------------------------------
          a60up70                                            Persons age 60 years and over
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  103                      missing "":  0/106

                        examples:  "1249.35381317139"
                                   "1709"
                                   "438"
                                   "795"

          --------------------------------------------------------------------------------
          a75up70                                            Persons age 75 years and over
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  100                      missing "":  0/106

                        examples:  "196"
                                   "260"
                                   "331.62300201878"
                                   "462.868347167969"

          --------------------------------------------------------------------------------
          agewht70                            White Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "2318.00001711865"
                                   "34.0050494401548"
                                   "4495.68150507156"
                                   "6200.00003238965"

          --------------------------------------------------------------------------------
          a15wht70                                            0-15 years old of White Race
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  104                      missing "":  0/106

                        examples:  "1270.03989895433"
                                   "1809.27038574219"
                                   "38"
                                   "691"

          --------------------------------------------------------------------------------
          a60wht70                                        60 Years and Older of White Race
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  105                      missing "":  0/106

                        examples:  "124.001122066751"
                                   "1873"
                                   "369"
                                   "671"

          --------------------------------------------------------------------------------
          ageblk70                            Black Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str19

                   unique values:  78                       missing "":  0/106

                        examples:  ""
                                   "1797.11408107728"
                                   "51"
                                   "6949"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          a15blk70                                            0-15 years old of Black Race
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str19

                   unique values:  74                       missing "":  0/106

                        examples:  ""
                                   "1211"
                                   "2296.99096679688"
                                   "37"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          a60blk70                                        60 years and older of Black Race
          --------------------------------------------------------------------------------

                            type:  string (str21)

                   unique values:  71                       missing "":  0/106

                        examples:  ""
                                   "12.0000012613232"
                                   "3"
                                   "582"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          ag15up70                                           Persons age 15 years and over
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "3065.15422687575"
                                   "3954.99995948281"
                                   "4743.99998398405"
                                   "5507.00002716658"

          --------------------------------------------------------------------------------
          mar70                                    Currently married (excluding separated)
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  104                      missing "":  0/106

                        examples:  "1551"
                                   "2017.08051204681"
                                   "2395.5824432373"
                                   "2879"

          --------------------------------------------------------------------------------
          wds70                                           Widowed, Divorced, and Separated
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  105                      missing "":  0/106

                        examples:  "1263"
                                   "1735.88173675537"
                                   "520"
                                   "764"

          --------------------------------------------------------------------------------
          own70                                               Owner-occupied housing units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  103                      missing "":  0/106

                        examples:  "1242.00660257461"
                                   "37.3945096731186"
                                   "642"
                                   "801.031769718975"

          --------------------------------------------------------------------------------
          rent70                                             Renter-occupied housing units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  105                      missing "":  0/106

                        examples:  "1264"
                                   "160.058319091797"
                                   "240.93065071106"
                                   "513"

          --------------------------------------------------------------------------------
          year                                                                        Year
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1970,1970]                  units:  1
                   unique values:  1                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     106  1970

          --------------------------------------------------------------------------------
          mex70                                                                   Mexicans
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  40                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "14"
                                   "5"

          --------------------------------------------------------------------------------
          pr70                                                               Puerto Ricans
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  15                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "0"

          --------------------------------------------------------------------------------
          cuban70                                                                   Cubans
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  20                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "1.110793829"

          --------------------------------------------------------------------------------
          family70                                                          Total Families
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "1259.047561"
                                   "1516.362427"
                                   "1854.054321"
                                   "347.2738206"

          --------------------------------------------------------------------------------
          fhh70                                       Female-headed families with children
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  101                      missing "":  0/106

                        examples:  "17"
                                   "264.118988"
                                   "35.06403303"
                                   "59.19965029"

          --------------------------------------------------------------------------------
          pop70sp2                                 Total Population from sample-based data
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "3564.000013"
                                   "4583.245736"
                                   "5914.000106"
                                   "7161.999913"

          pop70sp2:
            1.  Variable serves as the denominator for calculating the percentage of
                specific Hispanic origin groups (Mexicans, Cubans, and Puerto Ricans),
                European ancestry, and European foreign-born groups, and are only counted
                in sample-based data in 1970.

          --------------------------------------------------------------------------------
          ruanc70                            Persons of Russian/USSR parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  48                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "19"
                                   "5.859110832"

          --------------------------------------------------------------------------------
          itanc70                                 Persons of Italian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  76                       missing "":  0/106

                        examples:  "0"
                                   "21"
                                   "36.34092852"
                                   "63"

          --------------------------------------------------------------------------------
          geanc70                                  Persons of German parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  95                       missing "":  0/106

                        examples:  "131"
                                   "207"
                                   "304"
                                   "473"

          --------------------------------------------------------------------------------
          iranc70                                   Persons of Irish parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  74                       missing "":  0/106

                        examples:  "0.030245213"
                                   "20"
                                   "40"
                                   "6"

          --------------------------------------------------------------------------------
          scanc70                            Persons of Scandinavian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  39                       missing "":  0/106

                        examples:  "0"
                                   "11.6342802"
                                   "17"
                                   "5.079211235"

          --------------------------------------------------------------------------------
          rufb70                                     Persons who were born in Russia/ USSR
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  24                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "2.908892393"

          --------------------------------------------------------------------------------
          itfb70                                            Persons who were born in Italy
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  54                       missing "":  0/106

                        examples:  "0"
                                   "0.079213835"
                                   "14"
                                   "39"

          --------------------------------------------------------------------------------
          gefb70                                          Persons who were born in Germany
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  65                       missing "":  0/106

                        examples:  "0"
                                   "17.99998856"
                                   "36"
                                   "6"

          --------------------------------------------------------------------------------
          irfb70                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  35                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "3.091107607"

          --------------------------------------------------------------------------------
          scfb70                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  21                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "0"

          --------------------------------------------------------------------------------
          fb70                                                                Foreign-born
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  90                       missing "":  0/106

                        examples:  "117"
                                   "180.9998932"
                                   "241.7683463"
                                   "44.97224705"

          --------------------------------------------------------------------------------
          nat70                                                   Naturalized Foreign-Born
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  83                       missing "":  0/106

                        examples:  "121.6534748"
                                   "179"
                                   "223.5901184"
                                   "41.99891281"

          nat70:
            1.  Count is the category of “foreign-born, naturalized” from the
                “citizenship” table.

          --------------------------------------------------------------------------------
          pop70sp1                                 Total Population from sample-based data
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "3244.999979"
                                   "4610.999988"
                                   "5939.000053"
                                   "7246.000043"

          pop70sp1:
            1.  Variable serves as the denominator for calculating the percentages of
                foreign-born and naturalized foreign-born (only counted in sample-based
                data in 1970)

          --------------------------------------------------------------------------------
          n10imm70                            Recent Immigrants (within the past 10 years)
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  38                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0.000382516"
                                   "21"

          --------------------------------------------------------------------------------
          ag25up70                                            Population 25 years and over
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  105                      missing "":  0/106

                        examples:  "2368"
                                   "2936.966553"
                                   "3545"
                                   "4264"

          --------------------------------------------------------------------------------
          hs70                                     Persons with high school degree or less
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "2103.6604"
                                   "2703"
                                   "3145"
                                   "3825.549324"

          --------------------------------------------------------------------------------
          col70                              Persons with at least a 4 year college degree
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  97                       missing "":  0/106

                        examples:  "157"
                                   "271"
                                   "47"
                                   "68.90413404"

          --------------------------------------------------------------------------------
          clf70                                     Civilian labor force 16 years and over
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "1685"
                                   "2157"
                                   "2520"
                                   "3085"

          --------------------------------------------------------------------------------
          unemp70                                                               Unemployed
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  100                      missing "":  0/106

                        examples:  "148"
                                   "225"
                                   "308"
                                   "67"

          --------------------------------------------------------------------------------
          dflabf70                       Females 16 years and over, except in Armed Forces
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  103                      missing "":  0/106

                        examples:  "1729"
                                   "2104"
                                   "2648"
                                   "3054.075061"

          --------------------------------------------------------------------------------
          flabf70                                                   Females in labor force
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  102                      missing "":  0/106

                        examples:  "1228"
                                   "1507"
                                   "511.4605505"
                                   "778"

          --------------------------------------------------------------------------------
          empclf70                                      Employed persons 16 years and over
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  105                      missing "":  0/106

                        examples:  "1574"
                                   "2033"
                                   "2333"
                                   "2901"

          --------------------------------------------------------------------------------
          prof70                                   Professional employees (by occupations)
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  101                      missing "":  0/106

                        examples:  "173"
                                   "244"
                                   "321.0695803"
                                   "509.9867859"

          --------------------------------------------------------------------------------
          manuf70                                  Manufacturing employees (by industries)
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  102                      missing "":  0/106

                        examples:  "309.9901068"
                                   "437"
                                   "570.0185129"
                                   "716"

          --------------------------------------------------------------------------------
          semp70                                                             Self-employed
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  94                       missing "":  0/106

                        examples:  "128.9994507"
                                   "33"
                                   "63"
                                   "81"

          --------------------------------------------------------------------------------
          ag16cv70                                   Civilian population 16 years and over
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  105                      missing "":  0/106

                        examples:  "1406.270264"
                                   "1790.904082"
                                   "2050"
                                   "2463"

          --------------------------------------------------------------------------------
          vet70                                                                   Veterans
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "342"
                                   "590.8897705"
                                   "674.1038956"
                                   "818"

          --------------------------------------------------------------------------------
          cni16u70                  Civilian non-institutionalized persons 16-64 years old
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "2050.063361"
                                   "2547.99944"
                                   "3214.999944"
                                   "3743.906527"

          cni16u70:
            1.  In 1970, Persons 16-64 Years Old Not Inmates and Not Attending School.

          --------------------------------------------------------------------------------
          dis70                                                                   Disabled
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  103                      missing "":  0/106

                        examples:  "218.1669159"
                                   "336"
                                   "431"
                                   "600"

          --------------------------------------------------------------------------------
          dpov70                             Persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "3564.000013"
                                   "4583.245736"
                                   "5914.000106"
                                   "7177.000014"

          --------------------------------------------------------------------------------
          npov70                                                        Persons in poverty
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "1537"
                                   "248.8511647"
                                   "3391"
                                   "511.0254893"

          --------------------------------------------------------------------------------
          n65pov70                                   Persons 65 years and older in poverty
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  99                       missing "":  0/106

                        examples:  "144"
                                   "200.4536896"
                                   "245"
                                   "357"

          --------------------------------------------------------------------------------
          dfmpov70                          Families for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "1259.047561"
                                   "1516.362427"
                                   "1854.054321"
                                   "347.2738206"

          --------------------------------------------------------------------------------
          nfmpov70                                       Families with children in poverty
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  99                       missing "":  0/106

                        examples:  "15.00027096"
                                   "219"
                                   "308.0047642"
                                   "51"

          --------------------------------------------------------------------------------
          nwpov70                                                        whites in poverty
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  105                      missing "":  0/106

                        examples:  "200"
                                   "28"
                                   "413.702301"
                                   "617"

          --------------------------------------------------------------------------------
          dwpov70                      White persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "2249.684922"
                                   "3412.000005"
                                   "4336.999989"
                                   "6140.999983"

          --------------------------------------------------------------------------------
          nbpov70                                                        Blacks in poverty
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  61                       missing "":  0/106

                        examples:  ""
                                   "0"
                                   "1731"
                                   "36"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          dbpov70                      Black persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  78                       missing "":  0/106

                        examples:  "0"
                                   "2213"
                                   "4929"
                                   "6577"

          --------------------------------------------------------------------------------
          incpc70                                                        Per capita income
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1744.716,7024.893]          units:  .001
                   unique values:  103                      missing .:  0/106

                            mean:   3761.03
                        std. dev:   963.319

                     percentiles:        10%       25%       50%       75%       90%
                                     2583.84   3059.84   3711.41   4329.02    4938.4

          --------------------------------------------------------------------------------
          hu70sp                                        Housing units in sample-based data
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "1629"
                                   "2065"
                                   "2405.654053"
                                   "2822"

          --------------------------------------------------------------------------------
          h30old70                                 Structures built more than 30 years ago
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  105                      missing "":  0/106

                        examples:  "1430"
                                   "1723"
                                   "2246"
                                   "343.1021557"

          --------------------------------------------------------------------------------
          ohu70sp                              Occupied Housing Units in sample-based data
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "1469"
                                   "1899"
                                   "2181"
                                   "2625"

          --------------------------------------------------------------------------------
          h10yrs70                  Household heads moved into unit less than 10 years ago
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "1289"
                                   "1455"
                                   "1789"
                                   "429"

          --------------------------------------------------------------------------------
          hinc70                                                   Median household income
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "4798.611272"
                                   "5907.821468"
                                   "7116.438684"
                                   "8007.936533"

          --------------------------------------------------------------------------------
          mhmval70                                                       Median home value
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "11816.42249"
                                   "13267.54429"
                                   "16604.30888"
                                   "7094.04071"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          mrent70                                             Median monthly contract rent
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "53.7121184"
                                   "65.79081464"
                                   "72.45161476"
                                   "79.61077622"

          --------------------------------------------------------------------------------
          hh70                                       Total households in sample-based data
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "1315.663574"
                                   "1635"
                                   "1893.303467"
                                   "2355"

          --------------------------------------------------------------------------------
          pop80                                                           Total Population
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1127,8902]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   4274.01
                        std. dev:   1469.27

                     percentiles:        10%       25%       50%       75%       90%
                                        2436      3171    4136.5      5280      6287

          --------------------------------------------------------------------------------
          nhwht80                               Persons of White Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [13,7034]                    units:  1.000e-06
                   unique values:  104                      missing .:  0/106

                            mean:   2258.36
                        std. dev:   1983.21

                     percentiles:        10%       25%       50%       75%       90%
                                          43       198      2026   3682.27      5139

          --------------------------------------------------------------------------------
          nhblk80                               Persons of Black Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,8118]                     units:  1.000e-07
                   unique values:  93                       missing .:  0/106

                            mean:   1933.64
                        std. dev:   2192.59

                     percentiles:        10%       25%       50%       75%       90%
                                           0        14   927.796      3888      5317

          --------------------------------------------------------------------------------
          ntv80                                            Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,35]                       units:  1.000e-08
                   unique values:  39                       missing .:  0/106

                            mean:   6.05665
                        std. dev:   6.57613

                     percentiles:        10%       25%       50%       75%       90%
                                           0         2         4         8        15

          --------------------------------------------------------------------------------
          asian80                               Persons of Asian Race and Pacific Islander
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,109]                      units:  1.000e-07
                   unique values:  58                       missing .:  0/106

                            mean:   16.0023
                        std. dev:   18.6137

                     percentiles:        10%       25%       50%       75%       90%
                                           2         4        10        20   41.2517

          --------------------------------------------------------------------------------
          hisp80                                                Persons of Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [8,301]                      units:  1.000e-06
                   unique values:  80                       missing .:  0/106

                            mean:   52.1616
                        std. dev:   39.7476

                     percentiles:        10%       25%       50%       75%       90%
                                          17        28   43.3953        66        97

          --------------------------------------------------------------------------------
          haw80                                                   Persons of Hawaiian Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,4.0000777]                units:  1.000e-10
                   unique values:  14                       missing .:  0/106

                            mean:   .905678
                        std. dev:   1.18954

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         2   2.62695

          --------------------------------------------------------------------------------
          india80                                             Persons of Asian Indian Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,19]                       units:  1.000e-10
                   unique values:  29                       missing .:  0/106

                            mean:   2.42482
                        std. dev:   3.69711

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         3   6.93058

          --------------------------------------------------------------------------------
          china80                                                  Persons of Chinese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,55]                       units:  1.000e-13
                   unique values:  35                       missing .:  0/106

                            mean:   4.94411
                        std. dev:   9.14811

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1   6.18222        14

          --------------------------------------------------------------------------------
          filip80                                                 Persons of Filipino Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,30]                       units:  1.000e-08
                   unique values:  31                       missing .:  0/106

                            mean:   2.70772
                        std. dev:   4.83163

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1   3.87852         8

          --------------------------------------------------------------------------------
          japan80                                                 Persons of Japanese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,20]                       units:  1.000e-12
                   unique values:  26                       missing .:  0/106

                            mean:   1.57581
                        std. dev:   2.79769

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         2         4

          --------------------------------------------------------------------------------
          korea80                                                   Persons of Korean Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,13]                       units:  1.000e-11
                   unique values:  22                       missing .:  0/106

                            mean:    1.4534
                        std. dev:   2.55543

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         2   4.72851

          --------------------------------------------------------------------------------
          viet80                                                Persons of Vietnamese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,24]                       units:  1.000e-13
                   unique values:  22                       missing .:  0/106

                            mean:   1.72657
                        std. dev:   3.80052

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         2         6

          --------------------------------------------------------------------------------
          mex80                                                                   Mexicans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2,93]                       units:  1.000e-06
                   unique values:  71                       missing .:  0/106

                            mean:   28.9718
                        std. dev:   22.1347

                     percentiles:        10%       25%       50%       75%       90%
                                           8   13.0005        22        42        64

          --------------------------------------------------------------------------------
          pr80                                                               Puerto Ricans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,14]                       units:  1.000e-12
                   unique values:  24                       missing .:  0/106

                            mean:   1.72668
                        std. dev:   2.80413

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0    .99979         2         5

          --------------------------------------------------------------------------------
          cuban80                                                                   Cubans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,15]                       units:  1.000e-12
                   unique values:  27                       missing .:  0/106

                            mean:   1.74543
                        std. dev:     2.968

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   .000068   2.01365         6

          --------------------------------------------------------------------------------
          hu80                                                               Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [735,3682]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1905.31
                        std. dev:   570.028

                     percentiles:        10%       25%       50%       75%       90%
                                        1204      1461      1876   2261.04      2656

          --------------------------------------------------------------------------------
          vac80                                                       Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [6,907]                      units:  1.000e-06
                   unique values:  98                       missing .:  0/106

                            mean:   225.586
                        std. dev:   191.053

                     percentiles:        10%       25%       50%       75%       90%
                                     39.8013   79.7059       172       317       490

          --------------------------------------------------------------------------------
          ohu80                                                     Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [704,3181]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   1679.72
                        std. dev:   533.036

                     percentiles:        10%       25%       50%       75%       90%
                                        1052      1255    1675.5      1988   2480.61

          --------------------------------------------------------------------------------
          a18und80                                          Persons age 17 years and under
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [17,3239]                    units:  1.000e-06
                   unique values:  103                      missing .:  0/106

                            mean:   1117.32
                        std. dev:   622.168

                     percentiles:        10%       25%       50%       75%       90%
                                         433   690.347    1038.5   1422.14      1946

          --------------------------------------------------------------------------------
          a60up80                                            Persons age 60 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [213,2471]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   975.877
                        std. dev:   440.706

                     percentiles:        10%       25%       50%       75%       90%
                                         460       671       939      1200   1467.96

          --------------------------------------------------------------------------------
          a75up80                                            Persons age 75 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [51,1319]                    units:  .00001
                   unique values:  100                      missing .:  0/106

                            mean:   326.821
                        std. dev:   200.194

                     percentiles:        10%       25%       50%       75%       90%
                                         132   188.033   275.975       408       618

          --------------------------------------------------------------------------------
          ag15up80                                           Persons age 15 years and over
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "2313"
                                   "2915"
                                   "3558"
                                   "4198"

          --------------------------------------------------------------------------------
          mar80                                    Currently married (excluding separated)
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  103                      missing "":  0/106

                        examples:  "1279.60481399298"
                                   "1601.00909245014"
                                   "2355"
                                   "616.807556152344"

          --------------------------------------------------------------------------------
          wds80                                           Widowed, Divorced, and Separated
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  105                      missing "":  0/106

                        examples:  "1154"
                                   "1372.99450683594"
                                   "515"
                                   "735.690673828125"

          --------------------------------------------------------------------------------
          mhmval80                                                       Median home value
          --------------------------------------------------------------------------------

                            type:  string (str16)

                   unique values:  106                      missing "":  0/106

                        examples:  "14904.0000922832"
                                   "19315.9999400653"
                                   "26834.6069971386"
                                   "37396.0003758947"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          mrent80                                             Median monthly contract rent
          --------------------------------------------------------------------------------

                            type:  string (str16)

                   unique values:  106                      missing "":  0/106

                        examples:  "121.999996978076"
                                   "142.999999111446"
                                   "176.00000063004"
                                   "84.0000665399014"

          --------------------------------------------------------------------------------
          own80                                               Owner-occupied housing units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  102                      missing "":  0/106

                        examples:  "1481.38623046875"
                                   "386"
                                   "606"
                                   "79"

          --------------------------------------------------------------------------------
          rent80                                             Renter-occupied housing units
          --------------------------------------------------------------------------------

                            type:  string (str21), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "1249.837890625"
                                   "1865"
                                   "559"
                                   "833"

          --------------------------------------------------------------------------------
          agewht80                            White Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,6414]                     units:  1.000e-09
                   unique values:  85                       missing .:  0/106

                            mean:   1973.92
                        std. dev:   1998.09

                     percentiles:        10%       25%       50%       75%       90%
                                           0        36      1641      3551      5202

          --------------------------------------------------------------------------------
          a15wht80                                            0-15 years old of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1247]                     units:  1.000e-09
                   unique values:  73                       missing .:  0/106

                            mean:   298.276
                        std. dev:   354.793

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0     134.5       559       875

          a15wht80:
            1.  White Race 0-14 years old

          --------------------------------------------------------------------------------
          a60wht80                                        60 Years and Older of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2461]                     units:  1.000e-09
                   unique values:  85                       missing .:  0/106

                            mean:   568.678
                        std. dev:   588.064

                     percentiles:        10%       25%       50%       75%       90%
                                           0        13       410   940.448      1328

          --------------------------------------------------------------------------------
          ageblk80                            Black Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,8198]                     units:  .00001
                   unique values:  70                       missing .:  0/106

                            mean:   1860.13
                        std. dev:   2229.32

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   543.357      3888      5356

          --------------------------------------------------------------------------------
          a15blk80                                            0-15 years old of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2527]                     units:  .00001
                   unique values:  65                       missing .:  0/106

                            mean:   518.708
                        std. dev:   647.507

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0    125.25      1055      1422

          a15blk80:
            1.  Black Race 0-14 years old

          --------------------------------------------------------------------------------
          a60blk80                                        60 years and older of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1468.9619]                units:  1.000e-06
                   unique values:  61                       missing .:  0/106

                            mean:   282.859
                        std. dev:   388.626

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      48.5       494       998

          --------------------------------------------------------------------------------
          agehsp80                         Hispanic Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,303]                      units:  1.000e-08
                   unique values:  62                       missing .:  0/106

                            mean:   44.9057
                        std. dev:   54.6655

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      35.5   68.3439       116

          --------------------------------------------------------------------------------
          a15hsp80                                      0-15 years old of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,91]                       units:  1.000e-08
                   unique values:  42                       missing .:  0/106

                            mean:    11.783
                        std. dev:   19.1989

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        16        38

          a15hsp80:
            1.  Hispanic Origins 0-14 years old

          --------------------------------------------------------------------------------
          a60hsp80                          60 years and older persons of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,117]                      units:  1.000e-09
                   unique values:  31                       missing .:  0/106

                            mean:   6.51887
                        std. dev:   13.8249

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         9        20

          --------------------------------------------------------------------------------
          agentv80                  Native American Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,41]                       units:  1.000e-09
                   unique values:  5                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     102  0
                                       1  .00268971
                                       1  33
                                       1  38
                                       1  41

          --------------------------------------------------------------------------------
          a15ntv80                                  0-15 years old of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,5]                        units:  1
                   unique values:  2                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     105  0
                                       1  5

          a15ntv80:
            1.  Native American Race 0-14 years old

          --------------------------------------------------------------------------------
          a60ntv80                      60 years and Older Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,6]                        units:  1.000e-09
                   unique values:  3                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     104  0
                                       1  .0004707
                                       1  6

          --------------------------------------------------------------------------------
          ageasn80       Asian and Pacific Islander Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,140]                      units:  1.000e-08
                   unique values:  21                       missing .:  0/106

                            mean:   12.2074
                        std. dev:   28.4156

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0   57.9025

          --------------------------------------------------------------------------------
          a15asn80                          0-15 years old of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,51]                       units:  1.000e-09
                   unique values:  18                       missing .:  0/106

                            mean:   2.56604
                        std. dev:   7.55577

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        13

          a15asn80:
            1.  Asians and Pacific Islanders 0-14 years old

          --------------------------------------------------------------------------------
          a60asn80              60 years and Older Persons of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,28]                       units:  1.000e-07
                   unique values:  13                       missing .:  0/106

                            mean:   1.71687
                        std. dev:   5.43296

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0         5

          --------------------------------------------------------------------------------
          family80                                                          Total Families
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [99.00001,2089]              units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1018.78
                        std. dev:   393.767

                     percentiles:        10%       25%       50%       75%       90%
                                         542   716.776   984.071      1295   1518.67

          --------------------------------------------------------------------------------
          fhh80                                       Female-headed families with children
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,775]                      units:  1.000e-07
                   unique values:  96                       missing .:  0/106

                            mean:   205.425
                        std. dev:   165.445

                     percentiles:        10%       25%       50%       75%       90%
                                          39        72   159.185       326       429

          --------------------------------------------------------------------------------
          ruanc80                            Persons of Russian/USSR parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,131]                      units:  1.000e-09
                   unique values:  28                       missing .:  0/106

                            mean:    6.2957
                        std. dev:   16.0174

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0   6.79535        13

          --------------------------------------------------------------------------------
          itanc80                                 Persons of Italian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1680]                     units:  1.000e-06
                   unique values:  74                       missing .:  0/106

                            mean:   91.0219
                        std. dev:   196.306

                     percentiles:        10%       25%       50%       75%       90%
                                           0         6      38.5        93       211

          --------------------------------------------------------------------------------
          geanc80                                  Persons of German parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2160]                     units:  1.000e-07
                   unique values:  94                       missing .:  0/106

                            mean:   442.467
                        std. dev:   445.097

                     percentiles:        10%       25%       50%       75%       90%
                                           5        40     327.5   706.633   1071.93

          --------------------------------------------------------------------------------
          iranc80                                   Persons of Irish parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,582]                      units:  .00001
                   unique values:  85                       missing .:  0/106

                            mean:   163.116
                        std. dev:   142.884

                     percentiles:        10%       25%       50%       75%       90%
                                           0        24     137.5   270.204   371.853

          --------------------------------------------------------------------------------
          scanc80                            Persons of Scandinavian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,44.05064]                 units:  1.000e-09
                   unique values:  38                       missing .:  0/106

                            mean:   7.30243
                        std. dev:   9.90986

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   3.02881        12        19

          --------------------------------------------------------------------------------
          pop80sf3                                 Total population from sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1112,8902]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   4274.02
                        std. dev:   1469.39

                     percentiles:        10%       25%       50%       75%       90%
                                     2454.34      3154    4136.5      5254      6287

          pop80sf3:
            1.  In 1980, this variable serves as the denominator for calculating the
                percentages of specific European ancestry groups, which are only counted
                in the sample-based data in 1980. In 1990, this variable serves as the
                denominator for calculating the percentages of specific European ancestry
                groups, total foreign born, total foreign-born immigrated in the past 10
                years, and total naturalized foreign-born, which are only counted in the
                sample-based data in 1990.

          --------------------------------------------------------------------------------
          dfb80                                    Total population from sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1112,8902]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   4274.02
                        std. dev:   1469.39

                     percentiles:        10%       25%       50%       75%       90%
                                     2454.34      3154    4136.5      5254      6287

          dfb80:
            1.  This variable serves as the denominator for calculating the percentages of
                total foreign-born, which is only counted in the sample-based data in
                1980.

          --------------------------------------------------------------------------------
          fb80                                                                Foreign-born
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2,476]                      units:  1.000e-07
                   unique values:  97                       missing .:  0/106

                            mean:   112.063
                        std. dev:   100.904

                     percentiles:        10%       25%       50%       75%       90%
                                          11        31   82.5026   163.266       260

          --------------------------------------------------------------------------------
          ag5up80                                                 Persons 5 years and Over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1112,8137]                  units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   3969.75
                        std. dev:   1344.46

                     percentiles:        10%       25%       50%       75%       90%
                                        2330      2978      3904      4795      5785

          ag5up80:
            1.  Variable serves as the universe for tabulating individuals’ English
                speaking ability.

          --------------------------------------------------------------------------------
          olang80                    Persons who speak language other than English at home
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [11,852]                     units:  1.000e-06
                   unique values:  96                       missing .:  0/106

                            mean:   177.063
                        std. dev:   131.659

                     percentiles:        10%       25%       50%       75%       90%
                                          51        82   149.004       231       369

          olang80:
            1.  The universe is persons 5 years and older.

          --------------------------------------------------------------------------------
          lep80                                         Persons who speak English not well
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,131]                      units:  1.000e-09
                   unique values:  50                       missing .:  0/106

                            mean:   19.2175
                        std. dev:   24.5348

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   11.3917        29   51.5185

          lep80:
            1.  The universe is persons 5 years and older. The numerator is the sum of
                "Not well" and "Not at all" categories from the table, "Language Other
                than English Spoken at Home by Ability to Speak English."

          --------------------------------------------------------------------------------
          ag25up80                                            Population 25 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [979,5165]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:    2580.7
                        std. dev:   871.192

                     percentiles:        10%       25%       50%       75%       90%
                                        1553      1854    2542.5   3014.22      3897

          --------------------------------------------------------------------------------
          hs80                                     Persons with high school degree or less
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [522,3809]                   units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   2042.31
                        std. dev:   717.657

                     percentiles:        10%       25%       50%       75%       90%
                                        1236      1438    2009.5      2489      3091

          --------------------------------------------------------------------------------
          col80                              Persons with at least a 4 year college degree
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1447]                     units:  1.000e-06
                   unique values:  99                       missing .:  0/106

                            mean:    258.29
                        std. dev:   243.957

                     percentiles:        10%       25%       50%       75%       90%
                                          65       105       184   297.992       546

          --------------------------------------------------------------------------------
          clf80                                     Civilian labor force 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [574,4012]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1837.63
                        std. dev:    665.14

                     percentiles:        10%       25%       50%       75%       90%
                                        1033      1347   1690.13      2207      2691

          --------------------------------------------------------------------------------
          unemp80                                                               Unemployed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [6,622]                      units:  1.000e-06
                   unique values:  102                      missing .:  0/106

                            mean:   204.889
                        std. dev:   129.462

                     percentiles:        10%       25%       50%       75%       90%
                                          61   98.0736       183       284       386

          --------------------------------------------------------------------------------
          dflabf80                       Females 16 years and over, except in Armed Forces
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [530,3425]                   units:  .0001
                   unique values:  104                      missing .:  0/106

                            mean:    1870.1
                        std. dev:   622.364

                     percentiles:        10%       25%       50%       75%       90%
                                        1053      1463   1847.53      2259      2767

          --------------------------------------------------------------------------------
          flabf80                                                   Females in labor force
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [297,1992]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   890.208
                        std. dev:    331.08

                     percentiles:        10%       25%       50%       75%       90%
                                         448       665   839.825      1106      1325

          --------------------------------------------------------------------------------
          empclf80                                      Employed persons 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [528,3576]                   units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1632.74
                        std. dev:   613.194

                     percentiles:        10%       25%       50%       75%       90%
                                     943.657      1162      1574   1947.27      2483

          --------------------------------------------------------------------------------
          prof80                                   Professional employees (by occupations)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [28,1191]                    units:  1.000e-06
                   unique values:  98                       missing .:  0/106

                            mean:   289.515
                        std. dev:   206.134

                     percentiles:        10%       25%       50%       75%       90%
                                         118       157   225.477       359   566.264

          --------------------------------------------------------------------------------
          manuf80                                  Manufacturing employees (by industries)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [36,761]                     units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   353.402
                        std. dev:   166.923

                     percentiles:        10%       25%       50%       75%       90%
                                         162       230       335       431   628.431

          --------------------------------------------------------------------------------
          semp80                                                             Self-employed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,197]                      units:  1.000e-06
                   unique values:  78                       missing .:  0/106

                            mean:   53.4449
                        std. dev:   39.3867

                     percentiles:        10%       25%       50%       75%       90%
                                          12        26   46.9901        69   96.3121

          --------------------------------------------------------------------------------
          ag16cv80                                   Civilian population 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1106,6126]                  units:  .0001
                   unique values:  103                      missing .:  0/106

                            mean:   3297.84
                        std. dev:   1082.85

                     percentiles:        10%       25%       50%       75%       90%
                                        1961      2525   3277.74   4021.32      4850

          --------------------------------------------------------------------------------
          vet80                                                                   Veterans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [184,944]                    units:  .00001
                   unique values:  101                      missing .:  0/106

                            mean:   489.933
                        std. dev:   184.709

                     percentiles:        10%       25%       50%       75%       90%
                                         275       341     462.5       617       759

          --------------------------------------------------------------------------------
          cni16u80                  Civilian non-institutionalized persons 16-64 years old
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [647,5389]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:    2533.4
                        std. dev:   881.138

                     percentiles:        10%       25%       50%       75%       90%
                                        1545      1831    2470.5      3114      3642

          cni16u80:
            1.  In 1980, Non-institutional Persons 16 to 64 Years.

          --------------------------------------------------------------------------------
          dis80                                                                   Disabled
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [47.000004,647]              units:  1.000e-06
                   unique values:  95                       missing .:  0/106

                            mean:    293.71
                        std. dev:   127.123

                     percentiles:        10%       25%       50%       75%       90%
                                         139       189     275.5       381       469

          --------------------------------------------------------------------------------
          dpov80                             Persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1095,8880]                  units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   4191.65
                        std. dev:   1456.01

                     percentiles:        10%       25%       50%       75%       90%
                                        2378      3126    4116.5      5163      6145

          --------------------------------------------------------------------------------
          npov80                                                        Persons in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [60.881077,3312]             units:  1.000e-06
                   unique values:  105                      missing .:  0/106

                            mean:   913.674
                        std. dev:   708.658

                     percentiles:        10%       25%       50%       75%       90%
                                     157.264   274.102       773      1366      1663

          --------------------------------------------------------------------------------
          n65pov80                                   Persons 65 years and older in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.39152488,15.50076]         units:  1.000e-08
                   unique values:  106                      missing .:  0/106

                            mean:   3.28487
                        std. dev:   2.66506

                     percentiles:        10%       25%       50%       75%       90%
                                      .97687   1.50228   2.59157   4.21331   6.47606

          --------------------------------------------------------------------------------
          dfmpov80                          Families for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [99.00001,2089]              units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1018.78
                        std. dev:   393.767

                     percentiles:        10%       25%       50%       75%       90%
                                         542   716.776   984.071      1295   1518.67

          --------------------------------------------------------------------------------
          nfmpov80                                       Families with children in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,610]                      units:  1.000e-09
                   unique values:  92                       missing .:  0/106

                            mean:   137.453
                        std. dev:    127.22

                     percentiles:        10%       25%       50%       75%       90%
                                     7.27223   31.0645    115.52       227       288

          --------------------------------------------------------------------------------
          dwpov80                      White persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.00046606,6406]             units:  1.000e-09
                   unique values:  84                       missing .:  22/106

                            mean:   2426.14
                        std. dev:   1912.42

                     percentiles:        10%       25%       50%       75%       90%
                                          90       559   2107.93   3771.06      5171

          --------------------------------------------------------------------------------
          nwpov80                                                        whites in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.00028481,1308]             units:  1.000e-09
                   unique values:  79                       missing .:  22/106

                            mean:   303.097
                        std. dev:   297.248

                     percentiles:        10%       25%       50%       75%       90%
                                          18        61   206.627     403.5       743

          --------------------------------------------------------------------------------
          dbpov80                      Black persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [17,8176]                    units:  .00001
                   unique values:  69                       missing .:  37/106

                            mean:   2820.07
                        std. dev:   2181.38

                     percentiles:        10%       25%       50%       75%       90%
                                          47       704      2586      4719      5623

          --------------------------------------------------------------------------------
          nbpov80                                                        Blacks in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2996]                     units:  1.000e-06
                   unique values:  66                       missing .:  37/106

                            mean:   935.392
                        std. dev:   783.816

                     percentiles:        10%       25%       50%       75%       90%
                                          13       134       984      1430      2057

          --------------------------------------------------------------------------------
          dnapov80                   Native American for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,65.789474]                units:  1.000e-09
                   unique values:  4                        missing .:  102/106

                      tabulation:  Freq.  Value
                                       1  0
                                       1  .00117675
                                       1  34.146343
                                       1  65.789474
                                     102  .

          --------------------------------------------------------------------------------
          nnapov80                                             Native Americans in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,65.789474]                units:  1.000e-09
                   unique values:  4                        missing .:  102/106

                      tabulation:  Freq.  Value
                                       1  0
                                       1  .00117675
                                       1  34.146343
                                       1  65.789474
                                     102  .

          --------------------------------------------------------------------------------
          dhpov80                          Hispanics for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.00031967,303]              units:  1.000e-08
                   unique values:  61                       missing .:  41/106

                            mean:   71.3539
                        std. dev:   51.6409

                     percentiles:        10%       25%       50%       75%       90%
                                          31        40   58.0045        90       147

          --------------------------------------------------------------------------------
          nhpov80                                                     Hispanics in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,98]                       units:  1.000e-07
                   unique values:  32                       missing .:  41/106

                            mean:   16.7385
                        std. dev:    23.963

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         6        31        48

          --------------------------------------------------------------------------------
          dapov80       Asians and Pacific Islanders for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.14405431,140]              units:  1.000e-08
                   unique values:  21                       missing .:  85/106

                            mean:     59.38
                        std. dev:   33.0099

                     percentiles:        10%       25%       50%       75%       90%
                                          30   38.6388        52        72       100

          --------------------------------------------------------------------------------
          napov80                                  Asians and Pacific Islanders in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,128]                      units:  1.000e-07
                   unique values:  12                       missing .:  85/106

                            mean:   14.7618
                        std. dev:   27.8535

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   6.99706   21.3575        26

          --------------------------------------------------------------------------------
          incpc80                                                        Per capita income
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2631.1465,14605.001]        units:  .0001
                   unique values:  102                      missing .:  0/106

                            mean:   6047.89
                        std. dev:   2250.73

                     percentiles:        10%       25%       50%       75%       90%
                                     3493.29      4432      5748      7337      8532

          --------------------------------------------------------------------------------
          hu80sp                                        Housing units in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [737,3691]                   units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1905.22
                        std. dev:   567.809

                     percentiles:        10%       25%       50%       75%       90%
                                        1196      1473      1877   2263.89      2656

          --------------------------------------------------------------------------------
          h30old80                                 Structures built more than 30 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [30,3342]                    units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1462.62
                        std. dev:   611.735

                     percentiles:        10%       25%       50%       75%       90%
                                     658.249      1097   1434.01      1872      2268

          --------------------------------------------------------------------------------
          ohu80sp                              Occupied Housing Units in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [715,3190]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1679.72
                        std. dev:   532.008

                     percentiles:        10%       25%       50%       75%       90%
                                     1050.31      1225    1675.5      1988   2480.61

          --------------------------------------------------------------------------------
          h10yrs80                  Household heads moved into unit less than 10 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [345,2443]                   units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:    1044.5
                        std. dev:   390.068

                     percentiles:        10%       25%       50%       75%       90%
                                         605       752     966.5   1266.34      1628

          --------------------------------------------------------------------------------
          dmulti80                                                           Housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [737,3691]                   units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1905.22
                        std. dev:   567.809

                     percentiles:        10%       25%       50%       75%       90%
                                        1196      1473      1877   2263.89      2656

          dmulti80:
            1.  This variable serves as the denominator for calculating the percentage of
                housing units in multi-unit structures. In 1970 and 1980, the universe is
                "all year-round housing units (occupied units plus vacant year-round)."

          --------------------------------------------------------------------------------
          multi80                                   Housing units in multi-unit structures
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [48.00772,2842]              units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1152.72
                        std. dev:   580.083

                     percentiles:        10%       25%       50%       75%       90%
                                         346   763.401    1158.5      1506      1876

          --------------------------------------------------------------------------------
          hinc80                                                   Median household income
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [4852.502,20364.83]          units:  .0001
                   unique values:  104                      missing .:  0/106

                            mean:   11608.8
                        std. dev:   3501.96

                     percentiles:        10%       25%       50%       75%       90%
                                     7031.91      9191   11262.5     14207     16113

          --------------------------------------------------------------------------------
          hincw80                                       Median household income for whites
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [9812.5,52093.023]           units:  .0001
                   unique values:  70                       missing .:  33/106

                            mean:   18749.8
                        std. dev:   6297.16

                     percentiles:        10%       25%       50%       75%       90%
                                     12374.4   15672.7   17853.5   20827.9   22493.9

          --------------------------------------------------------------------------------
          hincb80                                       Median household income for blacks
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [4676.166,21297.469]         units:  .0001
                   unique values:  57                       missing .:  48/106

                            mean:   11521.1
                        std. dev:   3431.48

                     percentiles:        10%       25%       50%       75%       90%
                                     7238.73   9415.98   11388.1   13309.5   16314.9

          --------------------------------------------------------------------------------
          hinch80                                    Median household income for Hispanics
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [5972.2217,32500]            units:  .0001
                   unique values:  17                       missing .:  88/106

                            mean:   13770.8
                        std. dev:   6217.75

                     percentiles:        10%       25%       50%       75%       90%
                                     5972.22   9531.25   14270.8     15500     20000

          --------------------------------------------------------------------------------
          hinca80                 Median household income for Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [7395.8335,21250]            units:  .0001
                   unique values:  4                        missing .:  101/106

                      tabulation:  Freq.  Value
                                       1  7395.8335
                                       1  8928.5713
                                       1  8928.5723
                                       2  21250
                                     101  .

          --------------------------------------------------------------------------------
          hh80                                       Total households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [681,3243]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1683.52
                        std. dev:   533.554

                     percentiles:        10%       25%       50%       75%       90%
                                        1053      1283    1685.5      1988   2500.71

          --------------------------------------------------------------------------------
          hhw80                                Total white households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1998]                     units:  1.000e-09
                   unique values:  83                       missing .:  8/106

                            mean:   535.957
                        std. dev:   543.546

                     percentiles:        10%       25%       50%       75%       90%
                                           0        23       426       931      1361

          --------------------------------------------------------------------------------
          hhb80                                Total black households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1891]                     units:  .00001
                   unique values:  64                       missing .:  8/106

                            mean:    431.88
                        std. dev:   512.083

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   166.901       846      1238

          --------------------------------------------------------------------------------
          hhh80                             Total Hispanic households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.0000107,87]                units:  1.000e-08
                   unique values:  44                       missing .:  38/106

                            mean:   18.0295
                        std. dev:   13.8852

                     percentiles:        10%       25%       50%       75%       90%
                                           6      10.5        13        23        32

          --------------------------------------------------------------------------------
          hha80               Total Asian/Pacific Islander households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,20]                       units:  1.000e-09
                   unique values:  16                       missing .:  8/106

                            mean:   2.21442
                        std. dev:   5.21264

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0    11.672

          --------------------------------------------------------------------------------
          pop80sf4                                 Total population from sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1112,8902]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   4274.02
                        std. dev:   1469.39

                     percentiles:        10%       25%       50%       75%       90%
                                     2454.34      3154    4136.5      5254      6287

          pop80sf4:
            1.  In 1980, this variable serves as the denominator for calculating the
                percentages of specific European foreign-born groups, total foreign-born
                immigrated in the past 10 years, and total naturalized foreign-born, which
                are only counted in the sample-based data in 1980. In 1990, this variable
                serves as the denominator for calculating the percentages of specific
                European foreign-born groups, which are only counted in the sample-based
                data in 1990.

          --------------------------------------------------------------------------------
          gefb80                                          Persons who were born in Germany
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,77]                       units:  1.000e-07
                   unique values:  40                       missing .:  0/106

                            mean:   11.1139
                        std. dev:   15.7278

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         6        15        33

          --------------------------------------------------------------------------------
          irfb80                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,44]                       units:  1.000e-09
                   unique values:  20                       missing .:  0/106

                            mean:   2.38695
                        std. dev:   6.20215

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0   9.21149

          --------------------------------------------------------------------------------
          itfb80                                            Persons who were born in Italy
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,221]                      units:  1.000e-09
                   unique values:  34                       missing .:  0/106

                            mean:   14.6135
                        std. dev:   34.3786

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        13   47.5674

          --------------------------------------------------------------------------------
          rufb80                                     Persons who were born in Russia/ USSR
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,92]                       units:  1.000e-09
                   unique values:  20                       missing .:  0/106

                            mean:   2.61401
                        std. dev:   9.58721

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0   .009227         7

          --------------------------------------------------------------------------------
          scfb80                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,8]                        units:  1.000e-08
                   unique values:  5                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     101  0
                                       1  .20465083
                                       2  6
                                       1  6.7953496
                                       1  8

          --------------------------------------------------------------------------------
          n10imm80                            Recent Immigrants (within the past 10 years)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,202]                      units:  1.000e-07
                   unique values:  55                       missing .:  0/106

                            mean:   25.2111
                        std. dev:   37.0609

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      10.5        33   66.7245

          --------------------------------------------------------------------------------
          nat80                                                   Naturalized Foreign-Born
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,397]                      units:  1.000e-06
                   unique values:  89                       missing .:  0/106

                            mean:   85.7006
                        std. dev:   80.2951

                     percentiles:        10%       25%       50%       75%       90%
                                          11        25      69.5       115       183

          nat80:
            1.  Count is the category of “foreign-born, naturalized” from the
                “citizenship” table.

          --------------------------------------------------------------------------------
          pop90                                                           Total Population
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [915,7301]                   units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   3742.29
                        std. dev:    1281.9

                     percentiles:        10%       25%       50%       75%       90%
                                        2177      2937      3668      4477   5447.72

          --------------------------------------------------------------------------------
          nhwht90                               Persons of White Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [12,6490]                    units:  1.000e-06
                   unique values:  103                      missing .:  0/106

                            mean:    1876.9
                        std. dev:   1723.61

                     percentiles:        10%       25%       50%       75%       90%
                                          29   90.9998    1499.5      3065      4377

          --------------------------------------------------------------------------------
          nhblk90                               Persons of Black Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1.0003449,6985]             units:  1.000e-07
                   unique values:  102                      missing .:  0/106

                            mean:   1771.76
                        std. dev:   1752.21

                     percentiles:        10%       25%       50%       75%       90%
                                           9   173.927   1131.16      3252      4105

          --------------------------------------------------------------------------------
          ntv90                                            Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,33]                       units:  1.000e-08
                   unique values:  45                       missing .:  0/106

                            mean:    8.2454
                        std. dev:   7.20516

                     percentiles:        10%       25%       50%       75%       90%
                                           1         3   5.90889        13        19

          --------------------------------------------------------------------------------
          asian90                               Persons of Asian Race and Pacific Islander
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,262]                      units:  1.000e-07
                   unique values:  68                       missing .:  0/106

                            mean:   34.1178
                        std. dev:   48.4003

                     percentiles:        10%       25%       50%       75%       90%
                                           1         4        11   47.2339        96

          --------------------------------------------------------------------------------
          hisp90                                                Persons of Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2,235]                      units:  1.000e-07
                   unique values:  81                       missing .:  0/106

                            mean:   48.3414
                        std. dev:   43.5261

                     percentiles:        10%       25%       50%       75%       90%
                                           7        15   38.8478        69   106.008

          --------------------------------------------------------------------------------
          haw90                                                   Persons of Hawaiian Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,3]                        units:  1.000e-12
                   unique values:  12                       missing .:  0/106

                            mean:   .301905
                        std. dev:   .712733

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0         1

          --------------------------------------------------------------------------------
          india90                                             Persons of Asian Indian Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,35]                       units:  1.000e-10
                   unique values:  33                       missing .:  0/106

                            mean:   3.45379
                        std. dev:   6.18322

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         3        13

          --------------------------------------------------------------------------------
          china90                                                  Persons of Chinese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,61]                       units:  1.000e-12
                   unique values:  37                       missing .:  0/106

                            mean:   7.40748
                        std. dev:   11.7106

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         2        10   23.2047

          --------------------------------------------------------------------------------
          filip90                                                 Persons of Filipino Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,28.02401]                 units:  1.000e-10
                   unique values:  34                       missing .:  0/106

                            mean:   3.80218
                        std. dev:   4.90678

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         2         5        12

          --------------------------------------------------------------------------------
          japan90                                                 Persons of Japanese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,30]                       units:  1.000e-11
                   unique values:  21                       missing .:  0/106

                            mean:    2.1419
                        std. dev:   4.43324

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         2         9

          --------------------------------------------------------------------------------
          korea90                                                   Persons of Korean Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,20.991175]                units:  1.000e-11
                   unique values:  29                       missing .:  0/106

                            mean:   2.07599
                        std. dev:   3.55223

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         3         5

          --------------------------------------------------------------------------------
          viet90                                                Persons of Vietnamese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,117]                      units:  1.000e-11
                   unique values:  35                       missing .:  0/106

                            mean:    9.4247
                        std. dev:   22.8085

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   .004644         5        36

          --------------------------------------------------------------------------------
          mex90                                                                   Mexicans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,132]                      units:  1.000e-07
                   unique values:  64                       missing .:  0/106

                            mean:   23.0384
                        std. dev:   24.7723

                     percentiles:        10%       25%       50%       75%       90%
                                           2         6      16.5   27.9882   51.0062

          --------------------------------------------------------------------------------
          pr90                                                               Puerto Ricans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,20]                       units:  1.000e-13
                   unique values:  34                       missing .:  0/106

                            mean:   3.08519
                        std. dev:   3.83156

                     percentiles:        10%       25%       50%       75%       90%
                                           0   .999995    1.9952   4.72851         7

          --------------------------------------------------------------------------------
          cuban90                                                                   Cubans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,16]                       units:  1.000e-12
                   unique values:  31                       missing .:  0/106

                            mean:   2.90577
                        std. dev:   3.51055

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         2         5         7

          --------------------------------------------------------------------------------
          hu90                                                               Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [715,3582]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   1838.89
                        std. dev:   607.422

                     percentiles:        10%       25%       50%       75%       90%
                                      1096.5      1408      1812      2237      2648

          --------------------------------------------------------------------------------
          vac90                                                       Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [28.002621,871]              units:  1.000e-06
                   unique values:  97                       missing .:  0/106

                            mean:   282.906
                        std. dev:    174.03

                     percentiles:        10%       25%       50%       75%       90%
                                          89       159   254.922       379       486

          --------------------------------------------------------------------------------
          ohu90                                                     Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [477,2970]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1555.98
                        std. dev:   549.956

                     percentiles:        10%       25%       50%       75%       90%
                                     927.936      1129    1491.5      1855   2351.99

          --------------------------------------------------------------------------------
          a18und90                                          Persons age 17 years and under
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [41.000004,2407]             units:  1.000e-06
                   unique values:  101                      missing .:  0/106

                            mean:   943.789
                        std. dev:   468.181

                     percentiles:        10%       25%       50%       75%       90%
                                         408   638.731    910.07      1258      1492

          --------------------------------------------------------------------------------
          a60up90                                            Persons age 60 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [208,2224]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   791.345
                        std. dev:   370.379

                     percentiles:        10%       25%       50%       75%       90%
                                         338       515   727.991       981   1288.97

          --------------------------------------------------------------------------------
          a75up90                                            Persons age 75 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [53,1356]                    units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   307.299
                        std. dev:   195.619

                     percentiles:        10%       25%       50%       75%       90%
                                         117       172   264.506       415       528

          --------------------------------------------------------------------------------
          agewht90                            White Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [12,6560]                    units:  1.000e-06
                   unique values:  103                      missing .:  0/106

                            mean:   1906.42
                        std. dev:   1746.52

                     percentiles:        10%       25%       50%       75%       90%
                                          31   90.9998    1518.5      3118      4417

          --------------------------------------------------------------------------------
          a15wht90                                            0-15 years old of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.00012946,1246]             units:  1.000e-11
                   unique values:  86                       missing .:  0/106

                            mean:   315.501
                        std. dev:   335.327

                     percentiles:        10%       25%       50%       75%       90%
                                           4         6     202.5       555       795

          --------------------------------------------------------------------------------
          a60wht90                                        60 Years and Older of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [.99997413,2215]             units:  1.000e-08
                   unique values:  102                      missing .:  0/106

                            mean:   494.174
                        std. dev:   489.333

                     percentiles:        10%       25%       50%       75%       90%
                                           6        35       387       783      1180

          --------------------------------------------------------------------------------
          ageblk90                            Black Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1.0003449,7003]             units:  1.000e-07
                   unique values:  102                      missing .:  0/106

                            mean:   1777.45
                        std. dev:   1755.64

                     percentiles:        10%       25%       50%       75%       90%
                                           9   175.926   1141.55      3254      4107

          --------------------------------------------------------------------------------
          a15blk90                                            0-15 years old of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2022]                     units:  1.000e-12
                   unique values:  97                       missing .:  0/106

                            mean:   519.739
                        std. dev:   517.992

                     percentiles:        10%       25%       50%       75%       90%
                                           3   36.9845       353       953   1228.97

          --------------------------------------------------------------------------------
          a60blk90                                        60 years and older of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1460.9943]                units:  1.000e-07
                   unique values:  89                       missing .:  0/106

                            mean:   293.011
                        std. dev:   352.159

                     percentiles:        10%       25%       50%       75%       90%
                                           0         5   118.017       499       838

          --------------------------------------------------------------------------------
          agehsp90                         Hispanic Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2,235]                      units:  1.000e-07
                   unique values:  81                       missing .:  0/106

                            mean:   48.3414
                        std. dev:   43.5261

                     percentiles:        10%       25%       50%       75%       90%
                                           7        15   38.8478        69   106.008

          --------------------------------------------------------------------------------
          a15hsp90                                      0-15 years old of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,69]                       units:  1.000e-11
                   unique values:  54                       missing .:  0/106

                            mean:   11.8872
                        std. dev:   13.5067

                     percentiles:        10%       25%       50%       75%       90%
                                           1         3   7.60461   16.0265   30.8511

          --------------------------------------------------------------------------------
          a60hsp90                          60 years and older persons of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,50]                       units:  1.000e-09
                   unique values:  41                       missing .:  0/106

                            mean:   6.60389
                        std. dev:   6.90831

                     percentiles:        10%       25%       50%       75%       90%
                                           1         2       4.5        10   15.0005

          --------------------------------------------------------------------------------
          agentv90                  Native American Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,37]                       units:  1.000e-08
                   unique values:  48                       missing .:  0/106

                            mean:   8.96238
                        std. dev:    7.7947

                     percentiles:        10%       25%       50%       75%       90%
                                           2   3.00028   6.00001        13        20

          --------------------------------------------------------------------------------
          a15ntv90                                  0-15 years old of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,10]                       units:  1.000e-13
                   unique values:  20                       missing .:  0/106

                            mean:   1.58494
                        std. dev:   1.95505

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         3         4

          --------------------------------------------------------------------------------
          a60ntv90                      60 years and Older Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,7]                        units:  1.000e-12
                   unique values:  24                       missing .:  0/106

                            mean:   1.33962
                        std. dev:   1.48953

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         2         4

          --------------------------------------------------------------------------------
          ageasn90       Asian and Pacific Islander Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,263]                      units:  1.000e-07
                   unique values:  67                       missing .:  0/106

                            mean:   35.2216
                        std. dev:   49.5299

                     percentiles:        10%       25%       50%       75%       90%
                                           1         4        12   47.2339        97

          --------------------------------------------------------------------------------
          a15asn90                          0-15 years old of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,64]                       units:  1.000e-11
                   unique values:  45                       missing .:  0/106

                            mean:   7.17961
                        std. dev:    12.226

                     percentiles:        10%       25%       50%       75%       90%
                                           0   .010545   2.22978         8   21.0095

          --------------------------------------------------------------------------------
          a60asn90              60 years and Older Persons of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,8.9962177]                units:  1.000e-11
                   unique values:  26                       missing .:  0/106

                            mean:   1.83025
                        std. dev:   2.41456

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1   2.99613         6

          --------------------------------------------------------------------------------
          ag15up90                                           Persons age 15 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [856,5587]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:    2939.2
                        std. dev:   1002.62

                     percentiles:        10%       25%       50%       75%       90%
                                        1707      2337    2871.5      3515      4344

          --------------------------------------------------------------------------------
          mar90                                    Currently married (excluding separated)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [126,3164]                   units:  .00001
                   unique values:  101                      missing .:  0/106

                            mean:   1021.33
                        std. dev:   553.147

                     percentiles:        10%       25%       50%       75%       90%
                                         423       604   960.819      1271   1787.99

          --------------------------------------------------------------------------------
          wds90                                           Widowed, Divorced, and Separated
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [283,1946]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   836.434
                        std. dev:   293.378

                     percentiles:        10%       25%       50%       75%       90%
                                         429    623.75     856.5      1020      1189

          --------------------------------------------------------------------------------
          mhmval90                                                       Median home value
          --------------------------------------------------------------------------------

                            type:  string (str16)

                   unique values:  105                      missing "":  0/106

                        examples:  "275600.003374842"
                                   "37399.9999912921"
                                   "49000.0002559827"
                                   "59000.1334472768"

          --------------------------------------------------------------------------------
          mrent90                                             Median monthly contract rent
          --------------------------------------------------------------------------------

                            type:  string (str18), but longest is str16

                   unique values:  106                      missing "":  0/106

                        examples:  "199.999999615829"
                                   "233.999999273932"
                                   "256.999993753618"
                                   "293.000000577733"

          --------------------------------------------------------------------------------
          own90                                               Owner-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2,2376]                     units:  1.000e-07
                   unique values:  104                      missing .:  0/106

                            mean:   701.454
                        std. dev:   419.829

                     percentiles:        10%       25%       50%       75%       90%
                                         239       416       659       903      1257

          --------------------------------------------------------------------------------
          rent90                                             Renter-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [97.01,2087]                 units:  .00001
                   unique values:  101                      missing .:  0/106

                            mean:   854.527
                        std. dev:   418.343

                     percentiles:        10%       25%       50%       75%       90%
                                         363       575       822   1069.15      1510

          --------------------------------------------------------------------------------
          family90                                                          Total Families
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [125,1882]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   865.557
                        std. dev:    341.03

                     percentiles:        10%       25%       50%       75%       90%
                                         437       652     828.5      1047      1240

          --------------------------------------------------------------------------------
          fhh90                                       Female-headed families with children
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [3.0000002,666]              units:  1.000e-07
                   unique values:  102                      missing .:  0/106

                            mean:   221.633
                        std. dev:   159.714

                     percentiles:        10%       25%       50%       75%       90%
                                          40        84     199.5       338       412

          --------------------------------------------------------------------------------
          pop90sf3                                 Total population from sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [923,7244]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   3742.14
                        std. dev:   1271.89

                     percentiles:        10%       25%       50%       75%       90%
                                        2186   2910.31      3714      4477   5447.72

          pop90sf3:
            1.  In 1980, this variable serves as the denominator for calculating the
                percentages of specific European ancestry groups, which are only counted
                in the sample-based data in 1980. In 1990, this variable serves as the
                denominator for calculating the percentages of specific European ancestry
                groups, total foreign born, total foreign-born immigrated in the past 10
                years, and total naturalized foreign-born, which are only counted in the
                sample-based data in 1990.

          --------------------------------------------------------------------------------
          pop90sf4                                 Total population from sample-based data
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "2725.999994"
                                   "3280.000029"
                                   "4009.000038"
                                   "4674.000041"

          pop90sf4:
            1.  In 1980, this variable serves as the denominator for calculating the
                percentages of specific European foreign-born groups, total foreign-born
                immigrated in the past 10 years, and total naturalized foreign-born, which
                are only counted in the sample-based data in 1980. In 1990, this variable
                serves as the denominator for calculating the percentages of specific
                European foreign-born groups, which are only counted in the sample-based
                data in 1990.

          --------------------------------------------------------------------------------
          ruanc90                            Persons of Russian/USSR parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,223]                      units:  1.000e-08
                   unique values:  45                       missing .:  0/106

                            mean:   18.4764
                        std. dev:   34.5047

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0       8.5   20.0026        49

          --------------------------------------------------------------------------------
          itanc90                                 Persons of Italian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1494]                     units:  1.000e-06
                   unique values:  76                       missing .:  0/106

                            mean:   127.568
                        std. dev:   194.782

                     percentiles:        10%       25%       50%       75%       90%
                                           0         5   80.4971       171       300

          --------------------------------------------------------------------------------
          geanc90                                  Persons of German parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,3475]                     units:  .00001
                   unique values:  94                       missing .:  0/106

                            mean:    736.69
                        std. dev:   737.838

                     percentiles:        10%       25%       50%       75%       90%
                                           0        39     511.5      1239   1807.39

          --------------------------------------------------------------------------------
          iranc90                                   Persons of Irish parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1142]                     units:  1.000e-08
                   unique values:  84                       missing .:  0/106

                            mean:   269.103
                        std. dev:   252.596

                     percentiles:        10%       25%       50%       75%       90%
                                           0        24       234       434       648

          --------------------------------------------------------------------------------
          scanc90                            Persons of Scandinavian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,68]                       units:  1.000e-09
                   unique values:  53                       missing .:  0/106

                            mean:   17.5863
                        std. dev:   19.3123

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      12.5   26.2833        50

          --------------------------------------------------------------------------------
          rufb90                                     Persons who were born in Russia/ USSR
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  15                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "0"

          --------------------------------------------------------------------------------
          itfb90                                            Persons who were born in Italy
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  31                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "32"

          --------------------------------------------------------------------------------
          gefb90                                          Persons who were born in Germany
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  37                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "13.0725975"
                                   "27.99806976"

          --------------------------------------------------------------------------------
          irfb90                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  14                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "0"

          --------------------------------------------------------------------------------
          scfb90                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  10                       missing "":  0/106

                        examples:  "0"
                                   "0"
                                   "0"
                                   "0"

          --------------------------------------------------------------------------------
          fb90                                                                Foreign-born
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,383]                      units:  1.000e-09
                   unique values:  82                       missing .:  0/106

                            mean:   94.6652
                        std. dev:    99.167

                     percentiles:        10%       25%       50%       75%       90%
                                           0        13        63   151.936       239

          --------------------------------------------------------------------------------
          nat90                                                   Naturalized Foreign-Born
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,190]                      units:  1.000e-09
                   unique values:  71                       missing .:  0/106

                            mean:   46.6908
                        std. dev:   48.8876

                     percentiles:        10%       25%       50%       75%       90%
                                           0         6        35        75       125

          nat90:
            1.  Count is the category of “foreign-born, naturalized” from the
                “citizenship” table.

          --------------------------------------------------------------------------------
          n10imm90                            Recent Immigrants (within the past 10 years)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,302]                      units:  1.000e-09
                   unique values:  61                       missing .:  0/106

                            mean:   42.8139
                        std. dev:   65.2018

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0       9.5   64.0002       136

          --------------------------------------------------------------------------------
          ag5up90                                                 Persons 5 years and Over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [898,6654]                   units:  .0001
                   unique values:  104                      missing .:  0/106

                            mean:    3443.5
                        std. dev:   1160.08

                     percentiles:        10%       25%       50%       75%       90%
                                        2027   2713.12    3308.5      4151      4975

          ag5up90:
            1.  Variable serves as the universe for tabulating individuals’ English
                speaking ability.

          --------------------------------------------------------------------------------
          olang90                    Persons who speak language other than English at home
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [19.990507,540]              units:  1.000e-06
                   unique values:  97                       missing .:  0/106

                            mean:   176.272
                        std. dev:   116.594

                     percentiles:        10%       25%       50%       75%       90%
                                          60        84   139.009    261.89       337

          olang90:
            1.  The universe is persons 5 years and older.

          --------------------------------------------------------------------------------
          lep90                                         Persons who speak English not well
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,193]                      units:  1.000e-09
                   unique values:  68                       missing .:  0/106

                            mean:   30.4154
                        std. dev:   31.6109

                     percentiles:        10%       25%       50%       75%       90%
                                           0         9        19   44.9998        65

          lep90:
            1.  The universe is persons 5 years and older. The numerator is the sum of
                "Not well" and "Not at all" categories from the table, "Language Other
                than English Spoken at Home by Ability to Speak English."

          --------------------------------------------------------------------------------
          ag25up90                                            Population 25 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [628,5013]                   units:  .0001
                   unique values:  104                      missing .:  0/106

                            mean:   2413.11
                        std. dev:   849.699

                     percentiles:        10%       25%       50%       75%       90%
                                        1424      1856    2303.5      2944      3652

          --------------------------------------------------------------------------------
          hs90                                     Persons with high school degree or less
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [314.00003,3437]             units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1548.95
                        std. dev:    584.85

                     percentiles:        10%       25%       50%       75%       90%
                                         832      1083    1517.5      1903      2272

          --------------------------------------------------------------------------------
          col90                              Persons with at least a 4 year college degree
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [15,1821]                    units:  1.000e-06
                   unique values:  101                      missing .:  0/106

                            mean:   369.613
                        std. dev:   339.346

                     percentiles:        10%       25%       50%       75%       90%
                                          85   146.007       283       461   813.658

          --------------------------------------------------------------------------------
          clf90                                     Civilian labor force 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [311,3601]                   units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1710.48
                        std. dev:   667.192

                     percentiles:        10%       25%       50%       75%       90%
                                         869      1227   1612.47   2137.62      2633

          --------------------------------------------------------------------------------
          unemp90                                                               Unemployed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [10.000001,554]              units:  1.000e-06
                   unique values:  96                       missing .:  0/106

                            mean:   187.473
                        std. dev:   115.372

                     percentiles:        10%       25%       50%       75%       90%
                                          54        94       165       266       342

          --------------------------------------------------------------------------------
          dflabf90                       Females 16 years and over, except in Armed Forces
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [487,3083]                   units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1613.65
                        std. dev:   557.722

                     percentiles:        10%       25%       50%       75%       90%
                                     902.938      1278      1545      1926      2390

          --------------------------------------------------------------------------------
          flabf90                                                   Females in labor force
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [175,1871]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   857.107
                        std. dev:   331.929

                     percentiles:        10%       25%       50%       75%       90%
                                         423       623       843   1046.79      1285

          --------------------------------------------------------------------------------
          empclf90                                      Employed persons 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [276,3162]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:      1523
                        std. dev:   637.132

                     percentiles:        10%       25%       50%       75%       90%
                                     783.946      1080   1481.77      1859      2461

          --------------------------------------------------------------------------------
          prof90                                   Professional employees (by occupations)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [17,1410]                    units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   355.413
                        std. dev:   270.498

                     percentiles:        10%       25%       50%       75%       90%
                                     110.008       164       286       455   732.324

          --------------------------------------------------------------------------------
          manuf90                                  Manufacturing employees (by industries)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [6,556]                      units:  1.000e-06
                   unique values:  103                      missing .:  0/106

                            mean:   230.128
                        std. dev:   121.188

                     percentiles:        10%       25%       50%       75%       90%
                                          95       139     222.5       282       397

          --------------------------------------------------------------------------------
          semp90                                                             Self-employed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,214]                      units:  1.000e-06
                   unique values:  86                       missing .:  0/106

                            mean:    61.964
                        std. dev:   43.8771

                     percentiles:        10%       25%       50%       75%       90%
                                          15        27      51.5        94       121

          --------------------------------------------------------------------------------
          ag16cv90                                   Civilian population 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [823,5508]                   units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   2889.52
                        std. dev:   986.418

                     percentiles:        10%       25%       50%       75%       90%
                                        1639      2297      2837      3465      4317

          --------------------------------------------------------------------------------
          vet90                                                                   Veterans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [86,790]                     units:  .00001
                   unique values:  99                       missing .:  0/106

                            mean:   389.724
                        std. dev:   156.554

                     percentiles:        10%       25%       50%       75%       90%
                                         206       265       366   476.988       625

          --------------------------------------------------------------------------------
          cni16u90                  Civilian non-institutionalized persons 16-64 years old
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [823,5435]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   2834.67
                        std. dev:   964.877

                     percentiles:        10%       25%       50%       75%       90%
                                        1608      2157    2815.5      3401      4156

          cni16u90:
            1.  In 1990, Civilian Non-institutionalized persons 16 years and over.

          --------------------------------------------------------------------------------
          dis90                                                                   Disabled
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [150,920.99695]              units:  .00001
                   unique values:  101                      missing .:  0/106

                            mean:   465.345
                        std. dev:    170.86

                     percentiles:        10%       25%       50%       75%       90%
                                         230   358.096   448.965       591       677

          --------------------------------------------------------------------------------
          dpov90                             Persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [923,7190]                   units:  .0001
                   unique values:  103                      missing .:  0/106

                            mean:   3647.52
                        std. dev:    1263.8

                     percentiles:        10%       25%       50%       75%       90%
                                        2018      2852      3601      4446      5122

          --------------------------------------------------------------------------------
          npov90                                                        Persons in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [48.000004,2812]             units:  1.000e-06
                   unique values:  104                      missing .:  0/106

                            mean:   898.786
                        std. dev:   605.571

                     percentiles:        10%       25%       50%       75%       90%
                                     154.989       316       877      1267      1712

          --------------------------------------------------------------------------------
          n65pov90                                   Persons 65 years and older in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,393]                      units:  1.000e-06
                   unique values:  90                       missing .:  0/106

                            mean:   110.453
                        std. dev:   73.7756

                     percentiles:        10%       25%       50%       75%       90%
                                          38        55        89       152       233

          --------------------------------------------------------------------------------
          dfmpov90                          Families for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [125,1882]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   865.557
                        std. dev:    341.03

                     percentiles:        10%       25%       50%       75%       90%
                                         437       652     828.5      1047      1240

          --------------------------------------------------------------------------------
          nfmpov90                                       Families with children in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [25,1118]                    units:  1.000e-06
                   unique values:  98                       missing .:  0/106

                            mean:   463.933
                        std. dev:   210.353

                     percentiles:        10%       25%       50%       75%       90%
                                         216       335     453.5       608       749

          --------------------------------------------------------------------------------
          dwpov90                      White persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,6464]                     units:  1.000e-09
                   unique values:  100                      missing .:  0/106

                            mean:   1852.43
                        std. dev:   1722.23

                     percentiles:        10%       25%       50%       75%       90%
                                          13       119    1585.5   3083.04      4440

          --------------------------------------------------------------------------------
          nwpov90                                                        whites in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1207]                     units:  1.000e-09
                   unique values:  95                       missing .:  0/106

                            mean:   234.013
                        std. dev:   261.364

                     percentiles:        10%       25%       50%       75%       90%
                                           0        29   148.263   361.994   595.129

          --------------------------------------------------------------------------------
          dbpov90                      Black persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,6971]                     units:  1.000e-09
                   unique values:  99                       missing .:  0/106

                            mean:   1736.83
                        std. dev:   1740.02

                     percentiles:        10%       25%       50%       75%       90%
                                           6       169   1066.11      3286      4097

          --------------------------------------------------------------------------------
          nbpov90                                                        Blacks in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2636]                     units:  1.000e-09
                   unique values:  90                       missing .:  0/106

                            mean:   649.603
                        std. dev:   660.187

                     percentiles:        10%       25%       50%       75%       90%
                                           0   23.9905     437.5      1159   1477.96

          --------------------------------------------------------------------------------
          dnapov90                   Native American for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,100]                      units:  1.000e-09
                   unique values:  43                       missing .:  0/106

                            mean:   12.4245
                        std. dev:   18.4837

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         7        13        32

          --------------------------------------------------------------------------------
          nnapov90                                             Native Americans in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,65]                       units:  1.000e-09
                   unique values:  21                       missing .:  0/106

                            mean:   3.17925
                        std. dev:   8.49171

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0   .000414         9

          --------------------------------------------------------------------------------
          dhpov90                          Hispanics for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,275]                      units:  1.000e-09
                   unique values:  76                       missing .:  0/106

                            mean:   44.0398
                        std. dev:   55.1442

                     percentiles:        10%       25%       50%       75%       90%
                                           0         8      24.5        55       111

          --------------------------------------------------------------------------------
          nhpov90                                                     Hispanics in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,152]                      units:  1.000e-09
                   unique values:  40                       missing .:  0/106

                            mean:   10.3305
                        std. dev:   23.0533

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0   9.45702        30

          --------------------------------------------------------------------------------
          dapov90       Asians and Pacific Islanders for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,237]                      units:  1.000e-09
                   unique values:  58                       missing .:  0/106

                            mean:   32.1807
                        std. dev:   49.3185

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         8        44   96.9592

          --------------------------------------------------------------------------------
          napov90                                  Asians and Pacific Islanders in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,112]                      units:  1.000e-08
                   unique values:  28                       missing .:  0/106

                            mean:   8.58571
                        std. dev:   20.3388

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         7        25

          --------------------------------------------------------------------------------
          incpc90                                                        Per capita income
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [4051,26931]                 units:  .0001
                   unique values:  102                      missing .:  0/106

                            mean:   10840.4
                        std. dev:   4724.74

                     percentiles:        10%       25%       50%       75%       90%
                                        5663      7413   9657.58     13226     16817

          --------------------------------------------------------------------------------
          hu90sp                                        Housing units in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [731,3535]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1838.89
                        std. dev:   603.452

                     percentiles:        10%       25%       50%       75%       90%
                                     1090.48      1429      1812      2237      2648

          --------------------------------------------------------------------------------
          h30old90                                 Structures built more than 30 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [207.00002,3322]             units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   1503.14
                        std. dev:   623.881

                     percentiles:        10%       25%       50%       75%       90%
                                         676      1071      1448      1908      2396

          --------------------------------------------------------------------------------
          ohu90sp                              Occupied Housing Units in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [478,2970]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1555.98
                        std. dev:   546.479

                     percentiles:        10%       25%       50%       75%       90%
                                         879      1165      1475      1855      2346

          --------------------------------------------------------------------------------
          h10yrs90                  Household heads moved into unit less than 10 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [306,2281]                   units:  .00001
                   unique values:  100                      missing .:  0/106

                            mean:   956.394
                        std. dev:   410.927

                     percentiles:        10%       25%       50%       75%       90%
                                         494   633.003   864.475      1230      1500

          --------------------------------------------------------------------------------
          dmulti90                                                           Housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [731,3535]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1838.89
                        std. dev:   603.452

                     percentiles:        10%       25%       50%       75%       90%
                                     1090.48      1429      1812      2237      2648

          dmulti90:
            1.  This variable serves as the denominator for calculating the percentage of
                housing units in multi-unit structures. In 1970 and 1980, the universe is
                "all year-round housing units (occupied units plus vacant year-round)."

          --------------------------------------------------------------------------------
          multi90                                   Housing units in multi-unit structures
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [19.007727,2793]             units:  1.000e-06
                   unique values:  105                      missing .:  0/106

                            mean:   1093.35
                        std. dev:   582.475

                     percentiles:        10%       25%       50%       75%       90%
                                         286       701    1082.5      1437      1934

          --------------------------------------------------------------------------------
          hinc90                                                   Median household income
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "14036.00008"
                                   "18091.99996"
                                   "23165.00023"
                                   "26473.0003"

          --------------------------------------------------------------------------------
          hincw90                                       Median household income for whites
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  101                      missing "":  0/106

                        examples:  "15794.39267"
                                   "21471.21566"
                                   "2500.000067"
                                   "29121.16126"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hincb90                                       Median household income for blacks
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  94                       missing "":  0/106

                        examples:  "11023.98545"
                                   "13848.48466"
                                   "18309.35265"
                                   "26666.66676"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hinch90                                    Median household income for Hispanics
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  73                       missing "":  0/106

                        examples:  ""
                                   "12500"
                                   "22812.50015"
                                   "32333.3335"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hinca90                 Median household income for Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  56                       missing "":  0/106

                        examples:  ""
                                   ""
                                   "19999.99982"
                                   "3511.904787"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hh90                                       Total households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [471,2984]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1551.01
                        std. dev:    540.37

                     percentiles:        10%       25%       50%       75%       90%
                                     903.938   1186.06      1492      1841   2333.27

          --------------------------------------------------------------------------------
          hhw90                                Total white households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2961]                     units:  1.000e-09
                   unique values:  96                       missing .:  0/106

                            mean:   905.003
                        std. dev:   813.318

                     percentiles:        10%       25%       50%       75%       90%
                                           7        45       842      1572      2115

          --------------------------------------------------------------------------------
          hhb90                                Total black households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2197.9915]                units:  1.000e-07
                   unique values:  93                       missing .:  0/106

                            mean:   624.722
                        std. dev:   604.742

                     percentiles:        10%       25%       50%       75%       90%
                                           0        54     442.5      1187      1477

          --------------------------------------------------------------------------------
          hhh90                             Total Hispanic households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,115]                      units:  1.000e-07
                   unique values:  53                       missing .:  0/106

                            mean:   15.8968
                        std. dev:   19.5717

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        11   24.6797        41

          --------------------------------------------------------------------------------
          hha90               Total Asian/Pacific Islander households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,80]                       units:  1.000e-09
                   unique values:  44                       missing .:  0/106

                            mean:   12.0005
                        std. dev:   18.7955

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   1.00021        17    37.984

          --------------------------------------------------------------------------------
          pop00                                                           Total Population
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1172,6795]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:    3284.9
                        std. dev:   1254.96

                     percentiles:        10%       25%       50%       75%       90%
                                        1831      2269    3081.5      4016      5165

          --------------------------------------------------------------------------------
          nhwht00                               Persons of White Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [8,6266]                     units:  1.000e-06
                   unique values:  101                      missing .:  0/106

                            mean:   1408.82
                        std. dev:   1410.86

                     percentiles:        10%       25%       50%       75%       90%
                                          18        59    1007.5      2406      3353

          --------------------------------------------------------------------------------
          nhblk00                               Persons of Black Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [28,5983]                    units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1702.74
                        std. dev:   1303.97

                     percentiles:        10%       25%       50%       75%       90%
                                          94       587      1606      2575      3398

          --------------------------------------------------------------------------------
          ntv00                                            Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,76.004608]                units:  1.000e-07
                   unique values:  56                       missing .:  0/106

                            mean:   16.5192
                        std. dev:   14.2434

                     percentiles:        10%       25%       50%       75%       90%
                                           3         6   12.3446        24        34

          --------------------------------------------------------------------------------
          asian00                               Persons of Asian Race and Pacific Islander
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,414]                      units:  1.000e-11
                   unique values:  72                       missing .:  0/106

                            mean:    73.139
                        std. dev:   103.208

                     percentiles:        10%       25%       50%       75%       90%
                                           1         4        31    104.72       206

          --------------------------------------------------------------------------------
          hisp00                                                Persons of Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2.0003366,288]              units:  1.000e-07
                   unique values:  79                       missing .:  0/106

                            mean:   66.2476
                        std. dev:   63.5727

                     percentiles:        10%       25%       50%       75%       90%
                                     11.0001        16        41       101       159

          --------------------------------------------------------------------------------
          haw00                                                   Persons of Hawaiian Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2]                        units:  1.000e-13
                   unique values:  8                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      88  0
                                       1  4.637e-06
                                       1  .0045249
                                       1  .47461027
                                       1  .52538973
                                       1  .99999535
                                      12  1
                                       1  2

          --------------------------------------------------------------------------------
          india00                                             Persons of Asian Indian Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,107]                      units:  1.000e-11
                   unique values:  42                       missing .:  0/106

                            mean:   9.67032
                        std. dev:   16.6887

                     percentiles:        10%       25%       50%       75%       90%
                                           0         1         4        10   22.9903

          --------------------------------------------------------------------------------
          china00                                                  Persons of Chinese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,124]                      units:  1.000e-12
                   unique values:  42                       missing .:  0/106

                            mean:   11.5015
                        std. dev:   20.9127

                     percentiles:        10%       25%       50%       75%       90%
                                           0         1         3        12   28.4796

          --------------------------------------------------------------------------------
          filip00                                                 Persons of Filipino Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,34]                       units:  1.000e-11
                   unique values:  40                       missing .:  0/106

                            mean:   6.02852
                        std. dev:   6.78183

                     percentiles:        10%       25%       50%       75%       90%
                                           0   .006591         4        10        16

          --------------------------------------------------------------------------------
          japan00                                                 Persons of Japanese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,30]                       units:  1.000e-13
                   unique values:  31                       missing .:  0/106

                            mean:   3.17014
                        std. dev:   5.15184

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         4         9

          --------------------------------------------------------------------------------
          korea00                                                   Persons of Korean Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,42]                       units:  1.000e-08
                   unique values:  29                       missing .:  0/106

                            mean:   3.71729
                        std. dev:   6.49635

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         4        12

          --------------------------------------------------------------------------------
          viet00                                                Persons of Vietnamese Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,343]                      units:  1.000e-13
                   unique values:  50                       missing .:  0/106

                            mean:   32.6792
                        std. dev:   73.4852

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0       3.5        20       112

          --------------------------------------------------------------------------------
          mex00                                                                   Mexicans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,186]                      units:  1.000e-07
                   unique values:  70                       missing .:  0/106

                            mean:   38.7834
                        std. dev:   45.6931

                     percentiles:        10%       25%       50%       75%       90%
                                     3.99636         7      18.5        53       105

          --------------------------------------------------------------------------------
          pr00                                                               Puerto Ricans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,27]                       units:  1.000e-12
                   unique values:  31                       missing .:  0/106

                            mean:   4.71716
                        std. dev:   4.81215

                     percentiles:        10%       25%       50%       75%       90%
                                           0         1       3.5         7        10

          --------------------------------------------------------------------------------
          cuban00                                                                   Cubans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,17]                       units:  1.000e-13
                   unique values:  30                       missing .:  0/106

                            mean:   3.51891
                        std. dev:   4.03095

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         2   5.60254   9.21149

          --------------------------------------------------------------------------------
          hu00                                                               Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [543,3155]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   1663.75
                        std. dev:   592.017

                     percentiles:        10%       25%       50%       75%       90%
                                         962      1221      1573   2055.89   2537.28

          --------------------------------------------------------------------------------
          vac00                                                       Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [32,800]                     units:  .00001
                   unique values:  99                       missing .:  0/106

                            mean:   276.208
                        std. dev:   155.521

                     percentiles:        10%       25%       50%       75%       90%
                                          97       146     268.5       359       499

          --------------------------------------------------------------------------------
          ohu00                                                     Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [426,2981]                   units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1387.54
                        std. dev:   558.941

                     percentiles:        10%       25%       50%       75%       90%
                                     738.401       951    1299.5      1770      2204

          --------------------------------------------------------------------------------
          a18und00                                          Persons age 17 years and under
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [48,2372]                    units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   845.839
                        std. dev:   442.424

                     percentiles:        10%       25%       50%       75%       90%
                                         312       537   816.715      1066      1500

          --------------------------------------------------------------------------------
          a60up00                                            Persons age 60 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [162,1642]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   560.897
                        std. dev:   277.956

                     percentiles:        10%       25%       50%       75%       90%
                                     243.809       365       514       717   916.513

          --------------------------------------------------------------------------------
          a75up00                                            Persons age 75 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [51,968]                     units:  1.000e-06
                   unique values:  97                       missing .:  0/106

                            mean:   233.919
                        std. dev:   151.635

                     percentiles:        10%       25%       50%       75%       90%
                                     97.9203       137     185.5       293       431

          --------------------------------------------------------------------------------
          agewht00                            White Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [8,6266]                     units:  1.000e-06
                   unique values:  101                      missing .:  0/106

                            mean:   1408.82
                        std. dev:   1410.86

                     percentiles:        10%       25%       50%       75%       90%
                                          18        59    1007.5      2406      3353

          --------------------------------------------------------------------------------
          a15wht00                                            0-15 years old of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1163]                     units:  1.000e-13
                   unique values:  82                       missing .:  0/106

                            mean:   204.667
                        std. dev:   248.872

                     percentiles:        10%       25%       50%       75%       90%
                                           2         6        87   370.844       541

          --------------------------------------------------------------------------------
          a60wht00                                        60 Years and Older of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1607]                     units:  1.000e-07
                   unique values:  93                       missing .:  0/106

                            mean:   296.516
                        std. dev:   326.024

                     percentiles:        10%       25%       50%       75%       90%
                                           3        15       181       445       777

          --------------------------------------------------------------------------------
          ageblk00                            Black Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [16,5937]                    units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1674.05
                        std. dev:   1293.66

                     percentiles:        10%       25%       50%       75%       90%
                                          83       565      1537      2510      3373

          --------------------------------------------------------------------------------
          a15blk00                                            0-15 years old of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [3,1750]                     units:  1.000e-06
                   unique values:  102                      missing .:  0/106

                            mean:    494.97
                        std. dev:   408.121

                     percentiles:        10%       25%       50%       75%       90%
                                          25       122     479.5       752   1053.97

          --------------------------------------------------------------------------------
          a60blk00                                        60 years and older of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1315.9951]                units:  1.000e-06
                   unique values:  93                       missing .:  0/106

                            mean:   247.268
                        std. dev:   276.251

                     percentiles:        10%       25%       50%       75%       90%
                                           4        26     120.5       387       639

          --------------------------------------------------------------------------------
          agehsp00                         Hispanic Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [2.0003366,288]              units:  1.000e-07
                   unique values:  79                       missing .:  0/106

                            mean:   66.2476
                        std. dev:   63.5727

                     percentiles:        10%       25%       50%       75%       90%
                                     11.0001        16        41       101       159

          --------------------------------------------------------------------------------
          a15hsp00                                      0-15 years old of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,100]                      units:  1.000e-08
                   unique values:  58                       missing .:  0/106

                            mean:   17.5757
                        std. dev:    20.446

                     percentiles:        10%       25%       50%       75%       90%
                                     1.00003   3.67773         9        25        48

          --------------------------------------------------------------------------------
          a60hsp00                          60 years and older persons of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,35]                       units:  1.000e-12
                   unique values:  37                       missing .:  0/106

                            mean:   5.87744
                        std. dev:   5.65342

                     percentiles:        10%       25%       50%       75%       90%
                                           1         2   4.50226         8        13

          --------------------------------------------------------------------------------
          agentv00                  Native American Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,28.002293]                units:  1.000e-07
                   unique values:  40                       missing .:  0/106

                            mean:   8.13226
                        std. dev:   6.22401

                     percentiles:        10%       25%       50%       75%       90%
                                           2         4   6.39371        11        16

          --------------------------------------------------------------------------------
          a15ntv00                                  0-15 years old of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,13]                       units:  1.000e-13
                   unique values:  24                       missing .:  0/106

                            mean:   1.77363
                        std. dev:    2.3131

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         2         5

          --------------------------------------------------------------------------------
          a60ntv00                      60 years and Older Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,5]                        units:  1.000e-11
                   unique values:  16                       missing .:  0/106

                            mean:   .971679
                        std. dev:   1.17487

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         1         1         3

          --------------------------------------------------------------------------------
          ageasn00       Asian and Pacific Islander Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,403]                      units:  1.000e-11
                   unique values:  71                       missing .:  0/106

                            mean:   65.1259
                        std. dev:   96.2013

                     percentiles:        10%       25%       50%       75%       90%
                                     .005273         3        24        82       190

          --------------------------------------------------------------------------------
          a15asn00                          0-15 years old of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,112]                      units:  1.000e-08
                   unique values:  39                       missing .:  0/106

                            mean:   11.6325
                        std. dev:   22.5376

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0       3.5         9        34

          --------------------------------------------------------------------------------
          a60asn00              60 years and Older Persons of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,41]                       units:  1.000e-13
                   unique values:  37                       missing .:  0/106

                            mean:   5.23593
                        std. dev:   8.26058

                     percentiles:        10%       25%       50%       75%       90%
                                           0   .001318         2         7        13

          --------------------------------------------------------------------------------
          family00                                                          Total Families
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [81,1745]                    units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   726.207
                        std. dev:   325.411

                     percentiles:        10%       25%       50%       75%       90%
                                     358.805       484     705.5       920      1155

          --------------------------------------------------------------------------------
          fhh00                                       Female-headed families with children
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [9,607]                      units:  1.000e-06
                   unique values:  99                       missing .:  0/106

                            mean:   208.456
                        std. dev:   132.945

                     percentiles:        10%       25%       50%       75%       90%
                                          57       102     168.5       286    382.99

          --------------------------------------------------------------------------------
          own00                                               Owner-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [5,2400]                     units:  .00001
                   unique values:  100                      missing .:  0/106

                            mean:   650.388
                        std. dev:   415.313

                     percentiles:        10%       25%       50%       75%       90%
                                         205       351       598   839.005   1185.96

          --------------------------------------------------------------------------------
          rent00                                             Renter-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [103,1866]                   units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   737.149
                        std. dev:    368.69

                     percentiles:        10%       25%       50%       75%       90%
                                         342       440     681.5       940      1208

          --------------------------------------------------------------------------------
          pop00sf3                                 Total population from sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1160,6795]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:    3284.9
                        std. dev:   1252.68

                     percentiles:        10%       25%       50%       75%       90%
                                        1883      2332      3071      4014      5165

          pop00sf3:
            1.  In 1980, this variable serves as the denominator for calculating the
                percentages of specific European ancestry groups, which are only counted
                in the sample-based data in 1980. In 1990, this variable serves as the
                denominator for calculating the percentages of specific European ancestry
                groups, total foreign born, total foreign-born immigrated in the past 10
                years, and total naturalized foreign-born, which are only counted in the
                sample-based data in 1990.

          --------------------------------------------------------------------------------
          ruanc00                            Persons of Russian/USSR parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,186]                      units:  1.000e-09
                   unique values:  35                       missing .:  0/106

                            mean:   12.0961
                        std. dev:   25.8046

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   .005932   12.0001        31

          --------------------------------------------------------------------------------
          itanc00                                 Persons of Italian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1114]                     units:  1.000e-07
                   unique values:  67                       missing .:  0/106

                            mean:   97.7859
                        std. dev:     158.2

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   41.5427       133       237

          --------------------------------------------------------------------------------
          geanc00                                  Persons of German parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2186]                     units:  1.000e-07
                   unique values:  85                       missing .:  0/106

                            mean:   354.235
                        std. dev:   407.263

                     percentiles:        10%       25%       50%       75%       90%
                                           0        14     216.5   552.829       929

          --------------------------------------------------------------------------------
          iranc00                                   Persons of Irish parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,752]                      units:  1.000e-06
                   unique values:  78                       missing .:  0/106

                            mean:    172.56
                        std. dev:   187.647

                     percentiles:        10%       25%       50%       75%       90%
                                           0         6     108.5       293   470.802

          --------------------------------------------------------------------------------
          scanc00                            Persons of Scandinavian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,101]                      units:  1.000e-09
                   unique values:  45                       missing .:  0/106

                            mean:   14.1717
                        std. dev:   20.8773

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         6        24        42

          --------------------------------------------------------------------------------
          rufb00                                     Persons who were born in Russia/ USSR
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,65]                       units:  1.000e-06
                   unique values:  12                       missing .:  0/106

                            mean:   1.64155
                        std. dev:   7.15181

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0         5

          --------------------------------------------------------------------------------
          itfb00                                            Persons who were born in Italy
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,76]                       units:  1.000e-09
                   unique values:  20                       missing .:  0/106

                            mean:   3.25482
                        std. dev:   9.72327

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        12

          --------------------------------------------------------------------------------
          gefb00                                          Persons who were born in Germany
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,45]                       units:  1.000e-07
                   unique values:  27                       missing .:  0/106

                            mean:   5.92475
                        std. dev:   9.84373

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         8        21

          --------------------------------------------------------------------------------
          irfb00                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,17]                       units:  1
                   unique values:  7                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     100  0
                                       1  5
                                       1  6
                                       1  8
                                       1  10
                                       1  11
                                       1  17

          --------------------------------------------------------------------------------
          scfb00                                          Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,12.083963]                units:  1.000e-06
                   unique values:  6                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     100  0
                                       1  6
                                       2  7
                                       1  9
                                       1  10.916037
                                       1  12.083963

          --------------------------------------------------------------------------------
          fb00                                                                Foreign-born
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1118]                     units:  1.000e-09
                   unique values:  87                       missing .:  0/106

                            mean:   184.363
                        std. dev:   230.449

                     percentiles:        10%       25%       50%       75%       90%
                                     .000466        17        76       301   494.997

          --------------------------------------------------------------------------------
          nat00                                                   Naturalized Foreign-Born
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,213]                      units:  1.000e-09
                   unique values:  70                       missing .:  0/106

                            mean:   50.4544
                        std. dev:   53.2956

                     percentiles:        10%       25%       50%       75%       90%
                                           0         8        31        89   136.524

          nat00:
            1.  Count is the category of “foreign-born, naturalized” from the
                “citizenship” table.

          --------------------------------------------------------------------------------
          n10imm00                            Recent Immigrants (within the past 10 years)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1039]                     units:  1.000e-09
                   unique values:  75                       missing .:  0/106

                            mean:   134.314
                        std. dev:   192.527

                     percentiles:        10%       25%       50%       75%       90%
                                           0         7        45       207   374.539

          --------------------------------------------------------------------------------
          ag5up00                                                 Persons 5 years and Over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1069,6228]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   3063.96
                        std. dev:   1159.03

                     percentiles:        10%       25%       50%       75%       90%
                                        1693      2119    2893.5      3651      4756

          ag5up00:
            1.  Variable serves as the universe for tabulating individuals’ English
                speaking ability.

          --------------------------------------------------------------------------------
          olang00                    Persons who speak language other than English at home
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [21,1070]                    units:  1.000e-06
                   unique values:  99                       missing .:  0/106

                            mean:   262.696
                        std. dev:   241.261

                     percentiles:        10%       25%       50%       75%       90%
                                          50        82       159     370.4    656.44

          olang00:
            1.  The universe is persons 5 years and older.

          --------------------------------------------------------------------------------
          lep00                                         Persons who speak English not well
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,503]                      units:  1.000e-08
                   unique values:  79                       missing .:  0/106

                            mean:   72.3122
                        std. dev:   98.3915

                     percentiles:        10%       25%       50%       75%       90%
                                           0        10   34.5191        90       201

          lep00:
            1.  The universe is persons 5 years and older. The numerator is the sum of
                "Not well" and "Not at all" categories from the table, "Language Other
                than English Spoken at Home by Ability to Speak English."

          --------------------------------------------------------------------------------
          ag25up00                                            Population 25 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [565,4853]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   2093.92
                        std. dev:   849.273

                     percentiles:        10%       25%       50%       75%       90%
                                        1056      1397      2011      2594      3285

          --------------------------------------------------------------------------------
          hs00                                     Persons with high school degree or less
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [326,2579]                   units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   1177.01
                        std. dev:    497.62

                     percentiles:        10%       25%       50%       75%       90%
                                         558   808.045   1079.77      1512   1751.24

          --------------------------------------------------------------------------------
          col00                              Persons with at least a 4 year college degree
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [6,1901]                     units:  .00001
                   unique values:  98                       missing .:  0/106

                            mean:   399.434
                        std. dev:    408.04

                     percentiles:        10%       25%       50%       75%       90%
                                          66       119     258.5       473      1016

          --------------------------------------------------------------------------------
          ag15up00                                           Persons age 15 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [853,5457]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   2574.36
                        std. dev:   995.598

                     percentiles:        10%       25%       50%       75%       90%
                                        1371      1732      2452      3270      3953

          --------------------------------------------------------------------------------
          mar00                                    Currently married (excluding separated)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [79,2841]                    units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   840.854
                        std. dev:   502.231

                     percentiles:        10%       25%       50%       75%       90%
                                         300       462       768   1114.39      1556

          --------------------------------------------------------------------------------
          wds00                                           Widowed, Divorced, and Separated
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [209,1431.9948]              units:  .00001
                   unique values:  98                       missing .:  0/106

                            mean:   666.023
                        std. dev:   236.714

                     percentiles:        10%       25%       50%       75%       90%
                                         355       511     634.5       821       966

          --------------------------------------------------------------------------------
          clf00                                     Civilian labor force 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [259,3667]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1529.37
                        std. dev:   712.772

                     percentiles:        10%       25%       50%       75%       90%
                                         716       954      1427      1944      2540

          --------------------------------------------------------------------------------
          unemp00                                                               Unemployed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [17,721]                     units:  1.000e-06
                   unique values:  94                       missing .:  0/106

                            mean:   172.256
                        std. dev:   125.792

                     percentiles:        10%       25%       50%       75%       90%
                                          64        91       145       207       283

          --------------------------------------------------------------------------------
          dflabf00                       Females 16 years and over, except in Armed Forces
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [513,2957]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1367.58
                        std. dev:   543.411

                     percentiles:        10%       25%       50%       75%       90%
                                         683       933      1303    1662.4      2072

          --------------------------------------------------------------------------------
          flabf00                                                   Females in labor force
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [190,1826]                   units:  .00001
                   unique values:  101                      missing .:  0/106

                            mean:   769.071
                        std. dev:    354.38

                     percentiles:        10%       25%       50%       75%       90%
                                         359       521       717       941      1263

          --------------------------------------------------------------------------------
          empclf00                                      Employed persons 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [195,3517]                   units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   1357.11
                        std. dev:   696.361

                     percentiles:        10%       25%       50%       75%       90%
                                         566       778    1243.5      1753      2391

          --------------------------------------------------------------------------------
          prof00                                   Professional employees (by occupations)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [16,1406]                    units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   402.725
                        std. dev:   326.042

                     percentiles:        10%       25%       50%       75%       90%
                                          93       163       320       508       930

          --------------------------------------------------------------------------------
          manuf00                                  Manufacturing employees (by industries)
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [4,495]                      units:  1.000e-06
                   unique values:  94                       missing .:  0/106

                            mean:   162.456
                        std. dev:   96.9692

                     percentiles:        10%       25%       50%       75%       90%
                                          49        81     152.5       224       299

          --------------------------------------------------------------------------------
          semp00                                                             Self-employed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,287]                      units:  1.000e-06
                   unique values:  83                       missing .:  0/106

                            mean:   78.4844
                        std. dev:   57.2912

                     percentiles:        10%       25%       50%       75%       90%
                                          23        41        61       106   153.414

          --------------------------------------------------------------------------------
          ag18cv00                                                           Self-employed
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [804,5248]                   units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   2439.39
                        std. dev:   951.312

                     percentiles:        10%       25%       50%       75%       90%
                                        1290      1644    2286.5   3096.92      3817

          --------------------------------------------------------------------------------
          vet00                                                                   Veterans
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [63,724]                     units:  .00001
                   unique values:  100                      missing .:  0/106

                            mean:   282.969
                        std. dev:   129.518

                     percentiles:        10%       25%       50%       75%       90%
                                         135   191.876       267       356   448.988

          --------------------------------------------------------------------------------
          cni16u00                  Civilian non-institutionalized persons 16-64 years old
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [665,4248]                   units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   2057.27
                        std. dev:   831.498

                     percentiles:        10%       25%       50%       75%       90%
                                        1063      1379   1986.51      2550      3242

          cni16u00:
            1.  In 2000, Civilian Non-institutionalized Population 16 to 64 Years.

          --------------------------------------------------------------------------------
          dis00                                                                   Disabled
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [134,1051]                   units:  .00001
                   unique values:  101                      missing .:  0/106

                            mean:   499.696
                        std. dev:   202.001

                     percentiles:        10%       25%       50%       75%       90%
                                         272       366       457       601       832

          --------------------------------------------------------------------------------
          dpov00                             Persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [1049,6795]                  units:  .0001
                   unique values:  106                      missing .:  0/106

                            mean:   3201.23
                        std. dev:   1255.35

                     percentiles:        10%       25%       50%       75%       90%
                                     1782.66      2186    2988.5      3909      5056

          --------------------------------------------------------------------------------
          npov00                                                        Persons in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [85,2274]                    units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   786.686
                        std. dev:   449.882

                     percentiles:        10%       25%       50%       75%       90%
                                         222       491     718.5      1020      1355

          --------------------------------------------------------------------------------
          n65pov00                                   Persons 65 years and older in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [7,204.99927]                units:  1.000e-06
                   unique values:  82                       missing .:  0/106

                            mean:    74.388
                        std. dev:   42.8879

                     percentiles:        10%       25%       50%       75%       90%
                                          26   37.8172        73        97   136.688

          --------------------------------------------------------------------------------
          dfmpov00                          Families for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [46,1735]                    units:  .00001
                   unique values:  103                      missing .:  0/106

                            mean:   733.829
                        std. dev:    328.05

                     percentiles:        10%       25%       50%       75%       90%
                                         375       493     708.5       940      1174

          --------------------------------------------------------------------------------
          nfmpov00                                       Families with children in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,437]                      units:  1.000e-06
                   unique values:  93                       missing .:  0/106

                            mean:   124.831
                        std. dev:   97.6893

                     percentiles:        10%       25%       50%       75%       90%
                                          22        47       109       179       240

          --------------------------------------------------------------------------------
          dwpov00                      White persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,6225]                     units:  1.000e-06
                   unique values:  95                       missing .:  0/106

                            mean:   1365.41
                        std. dev:   1403.95

                     percentiles:        10%       25%       50%       75%       90%
                                           9        54       946   2386.15      3294

          --------------------------------------------------------------------------------
          nwpov00                                                        whites in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,718.06213]                units:  1.000e-06
                   unique values:  81                       missing .:  0/106

                            mean:   174.685
                        std. dev:   168.768

                     percentiles:        10%       25%       50%       75%       90%
                                           0        14     133.5       301       389

          --------------------------------------------------------------------------------
          dbpov00                      Black persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,5890]                     units:  .00001
                   unique values:  105                      missing .:  0/106

                            mean:   1640.88
                        std. dev:   1286.23

                     percentiles:        10%       25%       50%       75%       90%
                                          98       454    1495.5      2450      3361

          --------------------------------------------------------------------------------
          nbpov00                                                        Blacks in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,1900]                     units:  1.000e-06
                   unique values:  98                       missing .:  0/106

                            mean:   558.878
                        std. dev:   460.839

                     percentiles:        10%       25%       50%       75%       90%
                                          12       135     518.5       841      1189

          --------------------------------------------------------------------------------
          dnapov00                   Native American for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,153]                      units:  1.000e-07
                   unique values:  32                       missing .:  0/106

                            mean:   9.58478
                        std. dev:   18.7088

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0   .000029        13        26

          --------------------------------------------------------------------------------
          nnapov00                                             Native Americans in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,27]                       units:  1.000e-07
                   unique values:  15                       missing .:  0/106

                            mean:   1.82072
                        std. dev:   4.34199

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0         8

          --------------------------------------------------------------------------------
          dhpov00                          Hispanics for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,302]                      units:  1.000e-09
                   unique values:  77                       missing .:  0/106

                            mean:   62.2275
                        std. dev:    65.971

                     percentiles:        10%       25%       50%       75%       90%
                                           0        14      35.5        92       183

          --------------------------------------------------------------------------------
          nhpov00                                                     Hispanics in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,163]                      units:  1.000e-09
                   unique values:  49                       missing .:  0/106

                            mean:   15.7831
                        std. dev:   25.1686

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         7   20.0092        41

          --------------------------------------------------------------------------------
          dapov00       Asians and Pacific Islanders for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,402]                      units:  1.000e-09
                   unique values:  68                       missing .:  0/106

                            mean:   66.3506
                        std. dev:   93.9683

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        21        93       196

          --------------------------------------------------------------------------------
          napov00                                  Asians and Pacific Islanders in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,138]                      units:  1.000e-09
                   unique values:  38                       missing .:  0/106

                            mean:    15.057
                        std. dev:    28.757

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        13        52

          --------------------------------------------------------------------------------
          incpc00                                                        Per capita income
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [5731,36799]                 units:  .001
                   unique values:  102                      missing .:  0/106

                            mean:   15741.9
                        std. dev:   6282.68

                     percentiles:        10%       25%       50%       75%       90%
                                        8917     10627     14240     19638     24021

          --------------------------------------------------------------------------------
          hu00sp                                        Housing units in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [532,3155]                   units:  .0001
                   unique values:  103                      missing .:  0/106

                            mean:   1663.75
                        std. dev:   591.919

                     percentiles:        10%       25%       50%       75%       90%
                                         976      1221    1597.5   2055.88   2537.28

          --------------------------------------------------------------------------------
          h30old00                                 Structures built more than 30 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [334,3080]                   units:  .0001
                   unique values:  105                      missing .:  0/106

                            mean:   1487.99
                        std. dev:    595.78

                     percentiles:        10%       25%       50%       75%       90%
                                         824      1024   1414.32      1832      2355

          --------------------------------------------------------------------------------
          ohu00sp                              Occupied Housing Units in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [424,2981]                   units:  .00001
                   unique values:  104                      missing .:  0/106

                            mean:   1387.54
                        std. dev:   559.219

                     percentiles:        10%       25%       50%       75%       90%
                                         723   947.436    1298.5      1767      2204

          --------------------------------------------------------------------------------
          h10yrs00                  Household heads moved into unit less than 10 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [267,2024]                   units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   918.151
                        std. dev:   444.262

                     percentiles:        10%       25%       50%       75%       90%
                                         429       544     774.5      1222   1570.32

          --------------------------------------------------------------------------------
          dmulti00                                                           Housing units
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [532,3155]                   units:  .0001
                   unique values:  103                      missing .:  0/106

                            mean:   1663.75
                        std. dev:   591.919

                     percentiles:        10%       25%       50%       75%       90%
                                         976      1221    1597.5   2055.88   2537.28

          dmulti00:
            1.  This variable serves as the denominator for calculating the percentage of
                housing units in multi-unit structures. In 1970 and 1980, the universe is
                "all year-round housing units (occupied units plus vacant year-round)."

          --------------------------------------------------------------------------------
          multi00                                   Housing units in multi-unit structures
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [40,2300]                    units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:    934.99
                        std. dev:    520.91

                     percentiles:        10%       25%       50%       75%       90%
                                         264    600.03       892      1257      1670

          --------------------------------------------------------------------------------
          hinc00                                                   Median household income
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  106                      missing "":  0/106

                        examples:  "19684"
                                   "23258.71798"
                                   "27964.27627"
                                   "33307"

          --------------------------------------------------------------------------------
          hincw00                                       Median household income for whites
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  90                       missing "":  0/106

                        examples:  "16724"
                                   "25446"
                                   "33564.99891"
                                   "40302.00137"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hincb00                                       Median household income for blacks
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  104                      missing "":  0/106

                        examples:  "17477"
                                   "21447"
                                   "2499"
                                   "31136"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hinch00                                    Median household income for Hispanics
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  81                       missing "":  0/106

                        examples:  "100776"
                                   "23750"
                                   "32656"
                                   "40781.00192"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          hinca00                 Median household income for Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  59                       missing "":  0/106

                        examples:  ""
                                   "20735.29412"
                                   "32500"
                                   "5000"

                         warning:  variable has leading and trailing blanks

          --------------------------------------------------------------------------------
          mhmval00                                                       Median home value
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  103                      missing "":  0/106

                        examples:  "32701.13702"
                                   "43800"
                                   "55000"
                                   "68700.00277"

          --------------------------------------------------------------------------------
          mrent00                                             Median monthly contract rent
          --------------------------------------------------------------------------------

                            type:  string (str11)

                   unique values:  91                       missing "":  0/106

                        examples:  "289"
                                   "320"
                                   "350"
                                   "384"

          --------------------------------------------------------------------------------
          hh00                                       Total households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [394,2961]                   units:  .00001
                   unique values:  106                      missing .:  0/106

                            mean:   1389.52
                        std. dev:   559.285

                     percentiles:        10%       25%       50%       75%       90%
                                     718.045       973    1308.5      1777      2208

          --------------------------------------------------------------------------------
          hhw00                                Total white households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2891]                     units:  .00001
                   unique values:  87                       missing .:  0/106

                            mean:   690.212
                        std. dev:   694.197

                     percentiles:        10%       25%       50%       75%       90%
                                           0        16       541      1113      1689

          --------------------------------------------------------------------------------
          hhb00                                Total black households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,2095.9917]                units:  .00001
                   unique values:  102                      missing .:  0/106

                            mean:   628.644
                        std. dev:   470.839

                     percentiles:        10%       25%       50%       75%       90%
                                          33       183     627.5       958      1215

          --------------------------------------------------------------------------------
          hhh00                             Total Hispanic households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,94]                       units:  1.000e-09
                   unique values:  58                       missing .:  0/106

                            mean:   21.6794
                        std. dev:    22.421

                     percentiles:        10%       25%       50%       75%       90%
                                           0         5        15        35        56

          --------------------------------------------------------------------------------
          hha00               Total Asian/Pacific Islander households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [0,213]                      units:  1.000e-09
                   unique values:  53                       missing .:  0/106

                            mean:   26.6422
                        std. dev:   40.6357

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         9        34        81

          --------------------------------------------------------------------------------
          pop10                                                           Total Population
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [1010,6028]                  units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   3012.21
                        std. dev:    1158.8

                     percentiles:        10%       25%       50%       75%       90%
                                        1556      2234    2903.5      3698      4795

          --------------------------------------------------------------------------------
          nhwht10                               Persons of White Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [7,5576]                     units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   1270.77
                        std. dev:   1243.53

                     percentiles:        10%       25%       50%       75%       90%
                                          21        60    1054.5      2182      2956

          --------------------------------------------------------------------------------
          nhblk10                               Persons of Black Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [66,4911]                    units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   1515.39
                        std. dev:   1077.53

                     percentiles:        10%       25%       50%       75%       90%
                                         170       666    1412.5      2322      3004

          --------------------------------------------------------------------------------
          ntv10                                            Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,52]                       units:  1
                   unique values:  35                       missing .:  0/106

                            mean:   14.4245
                        std. dev:   10.9501

                     percentiles:        10%       25%       50%       75%       90%
                                           2         5      12.5        22        29

          --------------------------------------------------------------------------------
          asian10                               Persons of Asian Race and Pacific Islander
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,765]                      units:  1
                   unique values:  72                       missing .:  0/106

                            mean:   101.311
                        std. dev:   143.624

                     percentiles:        10%       25%       50%       75%       90%
                                           1         6      46.5       135       287

          --------------------------------------------------------------------------------
          hisp10                                                Persons of Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [4,489]                      units:  1
                   unique values:  78                       missing .:  0/106

                            mean:       105
                        std. dev:   111.324

                     percentiles:        10%       25%       50%       75%       90%
                                           9        19      64.5       142       305

          --------------------------------------------------------------------------------
          haw10                                                   Persons of Hawaiian Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,3]                        units:  1
                   unique values:  4                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      83  0
                                      17  1
                                       4  2
                                       2  3

          --------------------------------------------------------------------------------
          india10                                             Persons of Asian Indian Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,235]                      units:  1
                   unique values:  37                       missing .:  0/106

                            mean:    17.783
                        std. dev:   36.1468

                     percentiles:        10%       25%       50%       75%       90%
                                           0         1         6        14        53

          --------------------------------------------------------------------------------
          china10                                                  Persons of Chinese Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,497]                      units:  1
                   unique values:  40                       missing .:  0/106

                            mean:   21.7264
                        std. dev:   57.4074

                     percentiles:        10%       25%       50%       75%       90%
                                           0         1         6        16        41

          --------------------------------------------------------------------------------
          filip10                                                 Persons of Filipino Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,35]                       units:  1
                   unique values:  30                       missing .:  0/106

                            mean:   8.20755
                        std. dev:   8.26665

                     percentiles:        10%       25%       50%       75%       90%
                                           0         1       6.5        13        20

          --------------------------------------------------------------------------------
          japan10                                                 Persons of Japanese Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,32]                       units:  1
                   unique values:  19                       missing .:  0/106

                            mean:   3.84906
                        std. dev:   5.55456

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         2         6        10

          --------------------------------------------------------------------------------
          korea10                                                   Persons of Korean Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,55]                       units:  1
                   unique values:  23                       missing .:  0/106

                            mean:   6.40566
                        std. dev:   10.9551

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0       2.5         7        16

          --------------------------------------------------------------------------------
          viet10                                                Persons of Vietnamese Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,427]                      units:  1
                   unique values:  40                       missing .:  0/106

                            mean:   28.8491
                        std. dev:   62.5934

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         6        23        88

          --------------------------------------------------------------------------------
          mex10                                                                   Mexicans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,371]                      units:  1
                   unique values:  72                       missing .:  0/106

                            mean:   67.5755
                        std. dev:   86.0711

                     percentiles:        10%       25%       50%       75%       90%
                                           4         9        33        87       225

          --------------------------------------------------------------------------------
          pr10                                                               Puerto Ricans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,28]                       units:  1
                   unique values:  21                       missing .:  0/106

                            mean:   6.60377
                        std. dev:   5.76637

                     percentiles:        10%       25%       50%       75%       90%
                                           0         2         5         9        15

          --------------------------------------------------------------------------------
          cuban10                                                                   Cubans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,21]                       units:  1
                   unique values:  19                       missing .:  0/106

                            mean:    4.4717
                        std. dev:   5.19195

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         3         7        13

          --------------------------------------------------------------------------------
          family10                                                          Total Families
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [21,1543]                    units:  1
                   unique values:  98                       missing .:  0/106

                            mean:   636.679
                        std. dev:   278.491

                     percentiles:        10%       25%       50%       75%       90%
                                         318       442     598.5       796      1032

          --------------------------------------------------------------------------------
          fhh10                                       Female-headed families with children
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [3,599]                      units:  1
                   unique values:  90                       missing .:  0/106

                            mean:   170.915
                        std. dev:   111.991

                     percentiles:        10%       25%       50%       75%       90%
                                          49        88     146.5       231       316

          --------------------------------------------------------------------------------
          hu10                                                               Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [452,3149]                   units:  1
                   unique values:  102                      missing .:  0/106

                            mean:    1660.4
                        std. dev:   630.165

                     percentiles:        10%       25%       50%       75%       90%
                                         902      1213    1567.5      2080      2590

          --------------------------------------------------------------------------------
          vac10                                                       Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [41,1419]                    units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   320.236
                        std. dev:   185.373

                     percentiles:        10%       25%       50%       75%       90%
                                         141       192       288       405       514

          --------------------------------------------------------------------------------
          ohu10                                                     Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [338,2892]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   1340.16
                        std. dev:   566.495

                     percentiles:        10%       25%       50%       75%       90%
                                         610       929      1255      1789      2109

          --------------------------------------------------------------------------------
          own10                                               Owner-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [1,2280]                     units:  1
                   unique values:  102                      missing .:  0/106

                            mean:   607.783
                        std. dev:   389.146

                     percentiles:        10%       25%       50%       75%       90%
                                         212       309     546.5       776      1163

          --------------------------------------------------------------------------------
          rent10                                             Renter-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [127,2104]                   units:  1
                   unique values:  102                      missing .:  0/106

                            mean:   732.377
                        std. dev:    387.56

                     percentiles:        10%       25%       50%       75%       90%
                                         301       436     682.5       928      1281

          --------------------------------------------------------------------------------
          a18und10                                          Persons age 17 years and under
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [6,1610]                     units:  1
                   unique values:  104                      missing .:  0/106

                            mean:    637.16
                        std. dev:   338.349

                     percentiles:        10%       25%       50%       75%       90%
                                         248       381       568       792      1050

          --------------------------------------------------------------------------------
          a60up10                                            Persons age 60 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [122,1314]                   units:  1
                   unique values:  100                      missing .:  0/106

                            mean:   470.934
                        std. dev:   224.444

                     percentiles:        10%       25%       50%       75%       90%
                                         226       310       429       596       736

          --------------------------------------------------------------------------------
          a75up10                                            Persons age 75 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [26,594]                     units:  1
                   unique values:  89                       missing .:  0/106

                            mean:   164.962
                        std. dev:   105.194

                     percentiles:        10%       25%       50%       75%       90%
                                          61        96       135       217       287

          --------------------------------------------------------------------------------
          agewht10                            White Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [7,5576]                     units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   1270.77
                        std. dev:   1243.53

                     percentiles:        10%       25%       50%       75%       90%
                                          21        60    1054.5      2182      2956

          --------------------------------------------------------------------------------
          a15wht10                                            0-15 years old of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,776]                      units:  1
                   unique values:  76                       missing .:  0/106

                            mean:    137.33
                        std. dev:   167.927

                     percentiles:        10%       25%       50%       75%       90%
                                           1         5      62.5       232       336

          --------------------------------------------------------------------------------
          a60wht10                                        60 Years and Older of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,1266]                     units:  1
                   unique values:  84                       missing .:  0/106

                            mean:   230.208
                        std. dev:   251.728

                     percentiles:        10%       25%       50%       75%       90%
                                           2        13     141.5       367       619

          --------------------------------------------------------------------------------
          ageblk10                            Black Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [50,4865]                    units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   1475.37
                        std. dev:    1069.3

                     percentiles:        10%       25%       50%       75%       90%
                                         132       637      1351      2294      2877

          --------------------------------------------------------------------------------
          a15blk10                                            0-15 years old of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [4,1328]                     units:  1
                   unique values:  97                       missing .:  0/106

                            mean:   353.377
                        std. dev:   297.784

                     percentiles:        10%       25%       50%       75%       90%
                                          29        87       284       554       742

          --------------------------------------------------------------------------------
          a60blk10                                        60 years and older of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,1051]                     units:  1
                   unique values:  90                       missing .:  0/106

                            mean:   220.481
                        std. dev:   217.737

                     percentiles:        10%       25%       50%       75%       90%
                                           7        45       178       313       491

          --------------------------------------------------------------------------------
          agehsp10                         Hispanic Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [4,489]                      units:  1
                   unique values:  78                       missing .:  0/106

                            mean:       105
                        std. dev:   111.324

                     percentiles:        10%       25%       50%       75%       90%
                                           9        19      64.5       142       305

          --------------------------------------------------------------------------------
          a15hsp10                                      0-15 years old of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,175]                      units:  1
                   unique values:  53                       missing .:  0/106

                            mean:   27.6509
                        std. dev:   36.6855

                     percentiles:        10%       25%       50%       75%       90%
                                           2         4      10.5        35        91

          --------------------------------------------------------------------------------
          a60hsp10                          60 years and older persons of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,28]                       units:  1
                   unique values:  25                       missing .:  0/106

                            mean:    6.5283
                        std. dev:   6.29922

                     percentiles:        10%       25%       50%       75%       90%
                                           0         2         5         9        15

          --------------------------------------------------------------------------------
          ageasn10       Asian and Pacific Islander Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,733]                      units:  1
                   unique values:  69                       missing .:  0/106

                            mean:   87.6887
                        std. dev:   131.887

                     percentiles:        10%       25%       50%       75%       90%
                                           1         4      32.5       120       252

          --------------------------------------------------------------------------------
          a15asn10                          0-15 years old of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,131]                      units:  1
                   unique values:  31                       missing .:  0/106

                            mean:   11.8113
                        std. dev:   22.1536

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         4        13        30

          --------------------------------------------------------------------------------
          a60asn10              60 years and Older Persons of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,82]                       units:  1
                   unique values:  29                       missing .:  0/106

                            mean:   8.26415
                        std. dev:    14.087

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         2        11        25

          --------------------------------------------------------------------------------
          agentv10                  Native American Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,22]                       units:  1
                   unique values:  22                       missing .:  0/106

                            mean:   6.45283
                        std. dev:   4.83072

                     percentiles:        10%       25%       50%       75%       90%
                                           2         3         5         9        13

          --------------------------------------------------------------------------------
          a15ntv10                                  0-15 years old of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,9]                        units:  1
                   unique values:  9                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      62  0
                                      18  1
                                      10  2
                                       5  3
                                       6  4
                                       2  5
                                       1  6
                                       1  8
                                       1  9

          --------------------------------------------------------------------------------
          a60ntv10                      60 years and Older Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5]                        units:  1
                   unique values:  6                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      40  0
                                      34  1
                                      23  2
                                       6  3
                                       2  4
                                       1  5

          --------------------------------------------------------------------------------
          pop10a                                                          Total Population
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [1001,6146]                  units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   3007.63
                        std. dev:   1188.45

                     percentiles:        10%       25%       50%       75%       90%
                                        1611      2081    2907.5      3672      4630

          --------------------------------------------------------------------------------
          nhwht10a                              Persons of White Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5510]                     units:  1
                   unique values:  96                       missing .:  0/106

                            mean:   1256.65
                        std. dev:   1223.51

                     percentiles:        10%       25%       50%       75%       90%
                                          16        58    1016.5      2176      2859

          --------------------------------------------------------------------------------
          nhblk10a                              Persons of Black Race, Not Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5601]                     units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   1495.39
                        std. dev:    1142.9

                     percentiles:        10%       25%       50%       75%       90%
                                         169       523      1375      2370      2937

          --------------------------------------------------------------------------------
          ntv10a                                           Persons of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,214]                      units:  1
                   unique values:  20                       missing .:  0/106

                            mean:   6.14151
                        std. dev:   22.8404

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        16

          --------------------------------------------------------------------------------
          haw10a                                                  Persons of Hawaiian Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,16]                       units:  1
                   unique values:  2                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     105  0
                                       1  16

          --------------------------------------------------------------------------------
          asian10a                              Persons of Asian Race and Pacific Islander
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,785]                      units:  1
                   unique values:  51                       missing .:  0/106

                            mean:   81.3774
                        std. dev:    131.98

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      17.5       125       282

          --------------------------------------------------------------------------------
          hisp10a                                               Persons of Hispanic Origin
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,593]                      units:  1
                   unique values:  68                       missing .:  0/106

                            mean:    97.783
                        std. dev:   131.022

                     percentiles:        10%       25%       50%       75%       90%
                                           0         6      46.5       139       276

          --------------------------------------------------------------------------------
          india10a                                            Persons of Asian Indian Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,303]                      units:  1
                   unique values:  22                       missing .:  0/106

                            mean:   17.5283
                        std. dev:   46.5291

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        60

          --------------------------------------------------------------------------------
          china10a                                                 Persons of Chinese Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,197]                      units:  1
                   unique values:  26                       missing .:  0/106

                            mean:   17.1887
                        std. dev:    42.285

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         9        65

          --------------------------------------------------------------------------------
          filip10a                                                Persons of Filipino Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,175]                      units:  1
                   unique values:  17                       missing .:  0/106

                            mean:   7.16981
                        std. dev:    25.521

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        14

          --------------------------------------------------------------------------------
          japan10a                                                Persons of Japanese Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,32]                       units:  1
                   unique values:  9                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      97  0
                                       1  3
                                       1  12
                                       2  13
                                       1  15
                                       1  18
                                       1  22
                                       1  24
                                       1  32

          --------------------------------------------------------------------------------
          korea10a                                                  Persons of Korean Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,145]                      units:  1
                   unique values:  11                       missing .:  0/106

                            mean:   4.16038
                        std. dev:   16.8755

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        11

          --------------------------------------------------------------------------------
          viet10a                                               Persons of Vietnamese Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,478]                      units:  1
                   unique values:  26                       missing .:  0/106

                            mean:   25.4057
                        std. dev:   69.0327

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         8        87

          --------------------------------------------------------------------------------
          ruanc10a                           Persons of Russian/USSR parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,113]                      units:  1
                   unique values:  28                       missing .:  0/106

                            mean:   10.6321
                        std. dev:   19.9224

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        14        36

          --------------------------------------------------------------------------------
          itanc10a                                Persons of Italian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,716]                      units:  1
                   unique values:  69                       missing .:  0/106

                            mean:   84.8585
                        std. dev:   128.819

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        39       114       208

          --------------------------------------------------------------------------------
          geanc10a                                 Persons of German parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,1984]                     units:  1
                   unique values:  84                       missing .:  0/106

                            mean:   354.283
                        std. dev:   385.433

                     percentiles:        10%       25%       50%       75%       90%
                                           0        13       256       630       839

          --------------------------------------------------------------------------------
          iranc10a                                  Persons of Irish parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,867]                      units:  1
                   unique values:  77                       missing .:  0/106

                            mean:    171.16
                        std. dev:   188.564

                     percentiles:        10%       25%       50%       75%       90%
                                           0         6       125       276       432

          --------------------------------------------------------------------------------
          scanc10a                           Persons of Scandinavian parentage or Ancestry
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,184]                      units:  1
                   unique values:  43                       missing .:  0/106

                            mean:   19.5472
                        std. dev:   30.3162

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        30        64

          --------------------------------------------------------------------------------
          mex10a                                                                  Mexicans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,577]                      units:  1
                   unique values:  57                       missing .:  0/106

                            mean:   70.5849
                        std. dev:   120.101

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      15.5        84       224

          --------------------------------------------------------------------------------
          cuban10a                                                                  Cubans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,35]                       units:  1
                   unique values:  14                       missing .:  0/106

                            mean:   3.38679
                        std. dev:   8.00425

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        14

          --------------------------------------------------------------------------------
          pr10a                                                              Puerto Ricans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,84]                       units:  1
                   unique values:  21                       missing .:  0/106

                            mean:   6.08491
                        std. dev:   14.1031

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        22

          --------------------------------------------------------------------------------
          fb10a                                                               Foreign-born
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,997]                      units:  1
                   unique values:  79                       missing .:  0/106

                            mean:   200.528
                        std. dev:   239.361

                     percentiles:        10%       25%       50%       75%       90%
                                           0        12      89.5       326       558

          --------------------------------------------------------------------------------
          nat10a                                                  Naturalized Foreign-Born
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,513]                      units:  1
                   unique values:  64                       missing .:  0/106

                            mean:   69.9811
                        std. dev:   94.8012

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      32.5        96       199

          nat10a:
            1.  Count is the category of “foreign-born, naturalized” from the
                “citizenship” table.

          --------------------------------------------------------------------------------
          n10imm10a                           Recent Immigrants (within the past 10 years)
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,661]                      units:  1
                   unique values:  59                       missing .:  0/106

                            mean:   101.491
                        std. dev:   141.217

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        22       164       327

          --------------------------------------------------------------------------------
          ag5up10a                                                Persons 5 years and Over
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [939,5814]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   2807.19
                        std. dev:   1104.21

                     percentiles:        10%       25%       50%       75%       90%
                                        1471      1942      2660      3478      4448

          ag5up10a:
            1.  Variable serves as the universe for tabulating individuals’ English
                speaking ability.

          --------------------------------------------------------------------------------
          olang10a                   Persons who speak language other than English at home
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,1128]                     units:  1
                   unique values:  83                       missing .:  0/106

                            mean:   251.208
                        std. dev:   263.098

                     percentiles:        10%       25%       50%       75%       90%
                                          19        47       135       413       657

          olang10a:
            1.  The universe is persons 5 years and older.

          --------------------------------------------------------------------------------
          lep10a                                        Persons who speak English not well
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,603]                      units:  1
                   unique values:  54                       missing .:  0/106

                            mean:   67.6226
                        std. dev:   113.114

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      17.5        76       240

          lep10a:
            1.  The universe is persons 5 years and older. The numerator is the sum of
                "Not well" and "Not at all" categories from the table, "Language Other
                than English Spoken at Home by Ability to Speak English."

          --------------------------------------------------------------------------------
          rufb10a                                    Persons who were born in Russia/ USSR
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,86]                       units:  1
                   unique values:  8                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      99  0
                                       1  11
                                       1  14
                                       1  19
                                       1  22
                                       1  51
                                       1  63
                                       1  86

          --------------------------------------------------------------------------------
          itfb10a                                           Persons who were born in Italy
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,69]                       units:  1
                   unique values:  12                       missing .:  0/106

                            mean:   3.15094
                        std. dev:    10.196

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        10

          --------------------------------------------------------------------------------
          gefb10a                                         Persons who were born in Germany
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,53]                       units:  1
                   unique values:  15                       missing .:  0/106

                            mean:   3.66981
                        std. dev:   8.73059

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        12

          --------------------------------------------------------------------------------
          irfb10a                                         Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,27]                       units:  1
                   unique values:  6                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     101  0
                                       1  5
                                       1  11
                                       1  12
                                       1  15
                                       1  27

          --------------------------------------------------------------------------------
          scfb10a                                         Persons who were born in Ireland
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,15]                       units:  1
                   unique values:  7                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      99  0
                                       1  5
                                       1  8
                                       2  11
                                       1  12
                                       1  13
                                       1  15

          --------------------------------------------------------------------------------
          ag15up10a                                          Persons age 15 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [822,5126]                   units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   2459.06
                        std. dev:   971.792

                     percentiles:        10%       25%       50%       75%       90%
                                        1301      1706      2326      2968      3771

          --------------------------------------------------------------------------------
          mar10a                                   Currently married (excluding separated)
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [21,2549]                    units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   708.349
                        std. dev:   471.453

                     percentiles:        10%       25%       50%       75%       90%
                                         220       314     679.5      1032      1325

          --------------------------------------------------------------------------------
          wds10a                                          Widowed, Divorced, and Separated
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [122,1212]                   units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   566.726
                        std. dev:   219.414

                     percentiles:        10%       25%       50%       75%       90%
                                         312       401       542       713       865

          --------------------------------------------------------------------------------
          family10a                                                         Total Families
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [5,1532]                     units:  1
                   unique values:  100                      missing .:  0/106

                            mean:   642.566
                        std. dev:   301.717

                     percentiles:        10%       25%       50%       75%       90%
                                         303       417     608.5       766      1066

          --------------------------------------------------------------------------------
          fhh10a                                      Female-headed families with children
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,607]                      units:  1
                   unique values:  87                       missing .:  0/106

                            mean:   184.358
                        std. dev:   128.826

                     percentiles:        10%       25%       50%       75%       90%
                                          39        77       169       271       370

          --------------------------------------------------------------------------------
          ag25up10a                                           Population 25 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [410,4577]                   units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   1980.28
                        std. dev:     806.3

                     percentiles:        10%       25%       50%       75%       90%
                                        1002      1380    1869.5      2402      3123

          --------------------------------------------------------------------------------
          hs10a                                    Persons with high school degree or less
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [239,2163]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   921.415
                        std. dev:   427.361

                     percentiles:        10%       25%       50%       75%       90%
                                         434       568     891.5      1177      1477

          --------------------------------------------------------------------------------
          col10a                             Persons with at least a 4 year college degree
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,2074]                     units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   532.528
                        std. dev:   487.534

                     percentiles:        10%       25%       50%       75%       90%
                                          74       147       322       820      1241

          --------------------------------------------------------------------------------
          clf10a                                    Civilian labor force 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [402,3783]                   units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   1589.45
                        std. dev:    733.14

                     percentiles:        10%       25%       50%       75%       90%
                                         698      1071    1496.5      2082      2712

          --------------------------------------------------------------------------------
          unemp10a                                                              Unemployed
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [38,485]                     units:  1
                   unique values:  94                       missing .:  0/106

                            mean:   201.217
                        std. dev:   111.953

                     percentiles:        10%       25%       50%       75%       90%
                                          71       114       182       262       376

          --------------------------------------------------------------------------------
          dflabf10a                      Females 16 years and over, except in Armed Forces
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [373,2665]                   units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   1271.88
                        std. dev:   515.352

                     percentiles:        10%       25%       50%       75%       90%
                                         689       889      1187      1613      2066

          --------------------------------------------------------------------------------
          flabf10a                                                  Females in labor force
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [186,1904]                   units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   803.623
                        std. dev:   371.921

                     percentiles:        10%       25%       50%       75%       90%
                                         404       541     727.5      1051      1348

          --------------------------------------------------------------------------------
          empclf10a                                     Employed persons 16 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [305,3630]                   units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   1388.24
                        std. dev:   710.532

                     percentiles:        10%       25%       50%       75%       90%
                                         524       848      1277      1760      2406

          --------------------------------------------------------------------------------
          prof10a                                  Professional employees (by occupations)
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [12,1799]                    units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   485.575
                        std. dev:   415.768

                     percentiles:        10%       25%       50%       75%       90%
                                          90       145       361       716      1083

          --------------------------------------------------------------------------------
          manuf10a                                 Manufacturing employees (by industries)
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,309]                      units:  1
                   unique values:  84                       missing .:  0/106

                            mean:   120.849
                        std. dev:   78.5306

                     percentiles:        10%       25%       50%       75%       90%
                                          17        65     106.5       181       239

          --------------------------------------------------------------------------------
          semp10a                                                            Self-employed
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,335]                      units:  1
                   unique values:  83                       missing .:  0/106

                            mean:   87.4245
                        std. dev:   69.1696

                     percentiles:        10%       25%       50%       75%       90%
                                          14        36        77       108       174

          --------------------------------------------------------------------------------
          ag18cv10a                                                          Self-employed
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [728,4978]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   2334.15
                        std. dev:    937.87

                     percentiles:        10%       25%       50%       75%       90%
                                        1198      1633    2204.5      2848      3713

          --------------------------------------------------------------------------------
          vet10a                                                                  Veterans
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [35,430]                     units:  1
                   unique values:  95                       missing .:  0/106

                            mean:   206.509
                        std. dev:   89.1414

                     percentiles:        10%       25%       50%       75%       90%
                                          93       143     202.5       273       326

          --------------------------------------------------------------------------------
          hh10a                                      Total households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [318,2867]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:    1324.9
                        std. dev:   558.623

                     percentiles:        10%       25%       50%       75%       90%
                                         672       928      1217      1731      2079

          --------------------------------------------------------------------------------
          hhw10a                               Total white households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,2665]                     units:  1
                   unique values:  89                       missing .:  0/106

                            mean:   633.368
                        std. dev:   628.846

                     percentiles:        10%       25%       50%       75%       90%
                                           0        21       528      1067      1468

          --------------------------------------------------------------------------------
          hhb10a                               Total black households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,2052]                     units:  1
                   unique values:  99                       missing .:  0/106

                            mean:   608.132
                        std. dev:   435.285

                     percentiles:        10%       25%       50%       75%       90%
                                          64       238     599.5       929      1136

          --------------------------------------------------------------------------------
          hha10a              Total Asian/Pacific Islander households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,354]                      units:  1
                   unique values:  41                       missing .:  0/106

                            mean:   32.7642
                        std. dev:   59.8319

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        44        89

          --------------------------------------------------------------------------------
          hhh10a                            Total Hispanic households in sample-based data
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,160]                      units:  1
                   unique values:  46                       missing .:  0/106

                            mean:   30.0189
                        std. dev:   35.9754

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        17        51        76

          --------------------------------------------------------------------------------
          hinc10a                                                  Median household income
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [8840,68750]                 units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   33384.5
                        std. dev:   13156.6

                     percentiles:        10%       25%       50%       75%       90%
                                       16996     23125   31464.5     43767     50862

          --------------------------------------------------------------------------------
          hincw10a                                      Median household income for whites
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [-999,162500]                units:  1
                   unique values:  85                       missing .:  0/106

                            mean:   36838.4
                        std. dev:   29904.5

                     percentiles:        10%       25%       50%       75%       90%
                                        -999     12321     40490     51223     66076

          --------------------------------------------------------------------------------
          hincb10a                                      Median household income for blacks
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [-999,56667]                 units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   23717.2
                        std. dev:   11658.5

                     percentiles:        10%       25%       50%       75%       90%
                                        9500     16642     24485     29000     38272

          --------------------------------------------------------------------------------
          hinch10a                                   Median household income for Hispanics
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [-999,250001]                units:  1
                   unique values:  52                       missing .:  0/106

                            mean:   23255.6
                        std. dev:   38360.8

                     percentiles:        10%       25%       50%       75%       90%
                                        -999      -999      -999     40167     63897

          --------------------------------------------------------------------------------
          incpc10a                                                       Per capita income
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [6759,57356]                 units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   20768.7
                        std. dev:   9865.48

                     percentiles:        10%       25%       50%       75%       90%
                                       10462     12897   17061.5     27468     34272

          --------------------------------------------------------------------------------
          dpov10a                            Persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [445,6146]                   units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   2918.65
                        std. dev:    1190.6

                     percentiles:        10%       25%       50%       75%       90%
                                        1552      1977      2763      3622      4630

          --------------------------------------------------------------------------------
          npov10a                                                       Persons in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [49,2581]                    units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   759.406
                        std. dev:   476.691

                     percentiles:        10%       25%       50%       75%       90%
                                         220       438     672.5      1011      1415

          --------------------------------------------------------------------------------
          n65pov10a                                  Persons 65 years and older in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,187]                      units:  1
                   unique values:  81                       missing .:  0/106

                            mean:   58.3113
                        std. dev:   45.5964

                     percentiles:        10%       25%       50%       75%       90%
                                          11        19      50.5        88       118

          --------------------------------------------------------------------------------
          dfmpov10a                         Families for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [5,1532]                     units:  1
                   unique values:  100                      missing .:  0/106

                            mean:   642.566
                        std. dev:   301.717

                     percentiles:        10%       25%       50%       75%       90%
                                         303       417     608.5       766      1066

          --------------------------------------------------------------------------------
          nfmpov10a                                      Families with children in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,517]                      units:  1
                   unique values:  85                       missing .:  0/106

                            mean:   115.245
                        std. dev:   103.632

                     percentiles:        10%       25%       50%       75%       90%
                                           0        38      92.5       173       227

          --------------------------------------------------------------------------------
          dwpov10a                     White persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5510]                     units:  1
                   unique values:  94                       missing .:  0/106

                            mean:   1208.43
                        std. dev:   1215.59

                     percentiles:        10%       25%       50%       75%       90%
                                          11        47     996.5      2071      2771

          --------------------------------------------------------------------------------
          nwpov10a                                                       whites in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,796]                      units:  1
                   unique values:  76                       missing .:  0/106

                            mean:   156.387
                        std. dev:   164.448

                     percentiles:        10%       25%       50%       75%       90%
                                           0        12     114.5       243       394

          --------------------------------------------------------------------------------
          dbpov10a                     Black persons for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5416]                     units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   1465.99
                        std. dev:   1126.72

                     percentiles:        10%       25%       50%       75%       90%
                                         169       520    1359.5      2303      2937

          --------------------------------------------------------------------------------
          nbpov10a                                                       Blacks in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,2412]                     units:  1
                   unique values:  91                       missing .:  0/106

                            mean:   535.594
                        std. dev:   466.482

                     percentiles:        10%       25%       50%       75%       90%
                                           0       137     449.5       818      1212

          --------------------------------------------------------------------------------
          dnapov10a                  Native American for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,214]                      units:  1
                   unique values:  23                       missing .:  0/106

                            mean:   7.11321
                        std. dev:   23.7733

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         4        20

          --------------------------------------------------------------------------------
          nnapov10a                                            Native Americans in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,214]                      units:  1
                   unique values:  10                       missing .:  0/106

                            mean:    3.0566
                        std. dev:   21.0133

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0         0

          --------------------------------------------------------------------------------
          dhpov10a                         Hispanics for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,593]                      units:  1
                   unique values:  68                       missing .:  0/106

                            mean:   95.9811
                        std. dev:   130.988

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        45       139       252

          --------------------------------------------------------------------------------
          nhpov10a                                                    Hispanics in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,503]                      units:  1
                   unique values:  37                       missing .:  0/106

                            mean:   27.9623
                        std. dev:   68.0703

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        22        82

          --------------------------------------------------------------------------------
          dapov10a      Asians and Pacific Islanders for whom poverty status is determined
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,785]                      units:  1
                   unique values:  50                       missing .:  0/106

                            mean:   77.0566
                        std. dev:   129.632

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0        13       106       278

          --------------------------------------------------------------------------------
          napov10a                                 Asians and Pacific Islanders in poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,201]                      units:  1
                   unique values:  26                       missing .:  0/106

                            mean:   18.2075
                        std. dev:   42.9238

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        14        64

          --------------------------------------------------------------------------------
          hu10a                                                              Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [462,3064]                   units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   1663.39
                        std. dev:    620.56

                     percentiles:        10%       25%       50%       75%       90%
                                         915      1194      1576      2133      2586

          --------------------------------------------------------------------------------
          vac10a                                                      Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [10,1401]                    units:  1
                   unique values:  99                       missing .:  0/106

                            mean:   338.491
                        std. dev:   201.815

                     percentiles:        10%       25%       50%       75%       90%
                                         115       200       315       438       544

          --------------------------------------------------------------------------------
          ohu10a                                                    Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [318,2867]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:    1324.9
                        std. dev:   558.623

                     percentiles:        10%       25%       50%       75%       90%
                                         672       928      1217      1731      2079

          --------------------------------------------------------------------------------
          own10a                                              Owner-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,2308]                     units:  1
                   unique values:  100                      missing .:  0/106

                            mean:   625.104
                        std. dev:   393.053

                     percentiles:        10%       25%       50%       75%       90%
                                         181       358     569.5       799      1113

          --------------------------------------------------------------------------------
          rent10a                                            Renter-occupied housing units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [119,1780]                   units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   699.792
                        std. dev:    379.61

                     percentiles:        10%       25%       50%       75%       90%
                                         240       402     661.5       913      1253

          --------------------------------------------------------------------------------
          dmulti10a                                                          Housing units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [462,3064]                   units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   1663.39
                        std. dev:    620.56

                     percentiles:        10%       25%       50%       75%       90%
                                         915      1194      1576      2133      2586

          dmulti10a:
            1.  This variable serves as the denominator for calculating the percentage of
                housing units in multi-unit structures. In 1970 and 1980, the universe is
                "all year-round housing units (occupied units plus vacant year-round)."

          --------------------------------------------------------------------------------
          multi10a                                  Housing units in multi-unit structures
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [21,2585]                    units:  1
                   unique values:  102                      missing .:  0/106

                            mean:    887.84
                        std. dev:   550.571

                     percentiles:        10%       25%       50%       75%       90%
                                         226       515     845.5      1167      1680

          --------------------------------------------------------------------------------
          h30old10a                                Structures built more than 30 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [266,2967]                   units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   1493.16
                        std. dev:   648.203

                     percentiles:        10%       25%       50%       75%       90%
                                         705       999      1395      1874      2502

          --------------------------------------------------------------------------------
          h10yrs10a                 Household heads moved into unit less than 10 years ago
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [195,2153]                   units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   866.292
                        std. dev:   428.858

                     percentiles:        10%       25%       50%       75%       90%
                                         359       533       815      1090      1529

          --------------------------------------------------------------------------------
          mrent10a                                            Median monthly contract rent
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [238,748]                    units:  1
                   unique values:  95                       missing .:  0/106

                            mean:   490.425
                        std. dev:    101.44

                     percentiles:        10%       25%       50%       75%       90%
                                         369       429     485.5       546       604

          --------------------------------------------------------------------------------
          mhmval10a                                                      Median home value
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [-999,419500]                units:  1
                   unique values:  103                      missing .:  0/106

                            mean:    130190
                        std. dev:   75754.1

                     percentiles:        10%       25%       50%       75%       90%
                                       61700     77000    113650    162100    215700

          --------------------------------------------------------------------------------
          a18und10a                                         Persons age 17 years and under
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,1865]                     units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   671.236
                        std. dev:   397.317

                     percentiles:        10%       25%       50%       75%       90%
                                         236       391       609       883      1267

          --------------------------------------------------------------------------------
          a60up10a                                           Persons age 60 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [71,1276]                    units:  1
                   unique values:  101                      missing .:  0/106

                            mean:   469.302
                        std. dev:   225.494

                     percentiles:        10%       25%       50%       75%       90%
                                         193       336       439       566       663

          --------------------------------------------------------------------------------
          a75up10a                                           Persons age 75 years and over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [9,849]                      units:  1
                   unique values:  90                       missing .:  0/106

                            mean:   175.396
                        std. dev:   123.375

                     percentiles:        10%       25%       50%       75%       90%
                                          56        95       148       233       293

          --------------------------------------------------------------------------------
          agewht10a                           White Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5510]                     units:  1
                   unique values:  96                       missing .:  0/106

                            mean:   1256.65
                        std. dev:   1223.51

                     percentiles:        10%       25%       50%       75%       90%
                                          16        58    1016.5      2176      2859

          --------------------------------------------------------------------------------
          ageblk10a                           Black Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5634]                     units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   1498.71
                        std. dev:   1144.71

                     percentiles:        10%       25%       50%       75%       90%
                                         169       523      1375      2390      2937

          --------------------------------------------------------------------------------
          agentv10a                 Native American Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,214]                      units:  1
                   unique values:  23                       missing .:  0/106

                            mean:   7.11321
                        std. dev:   23.7733

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         4        20

          --------------------------------------------------------------------------------
          agehsp10a                        Hispanic Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,593]                      units:  1
                   unique values:  68                       missing .:  0/106

                            mean:    97.783
                        std. dev:   131.022

                     percentiles:        10%       25%       50%       75%       90%
                                           0         6      46.5       139       276

          --------------------------------------------------------------------------------
          ageasn10a      Asian and Pacific Islander Population with Known Age Distribution
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,785]                      units:  1
                   unique values:  51                       missing .:  0/106

                            mean:   81.3774
                        std. dev:    131.98

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      17.5       125       282

          --------------------------------------------------------------------------------
          a15wht10a                                           0-15 years old of White Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,809]                      units:  1
                   unique values:  73                       missing .:  0/106

                            mean:   135.689
                        std. dev:   174.089

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      53.5       216       365

          a15wht10a:
            1.  White Race 0-14 years old

          --------------------------------------------------------------------------------
          a15blk10a                                           0-15 years old of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,1398]                     units:  1
                   unique values:  94                       missing .:  0/106

                            mean:   346.368
                        std. dev:   317.485

                     percentiles:        10%       25%       50%       75%       90%
                                          10        79     273.5       528       757

          a15blk10a:
            1.  Black Race 0-14 years old

          --------------------------------------------------------------------------------
          a15ntv10a                                 0-15 years old of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,54]                       units:  1
                   unique values:  8                        missing .:  0/106

                      tabulation:  Freq.  Value
                                      98  0
                                       2  5
                                       1  6
                                       1  8
                                       1  9
                                       1  13
                                       1  14
                                       1  54

          a15ntv10a:
            1.  Native American Race 0-14 years old

          --------------------------------------------------------------------------------
          a15hsp10a                                     0-15 years old of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,371]                      units:  1
                   unique values:  39                       missing .:  0/106

                            mean:   25.4528
                        std. dev:   51.8619

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0        31        87

          a15hsp10a:
            1.  Hispanic Origins 0-14 years old

          --------------------------------------------------------------------------------
          a15asn10a                         0-15 years old of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,274]                      units:  1
                   unique values:  21                       missing .:  0/106

                            mean:   12.1509
                        std. dev:   35.7917

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        41

          a15asn10a:
            1.  Asians and Pacific Islanders 0-14 years old

          --------------------------------------------------------------------------------
          a65wht10a                              65 Years and Older of Non-Hispanic Whites
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,982]                      units:  1
                   unique values:  73                       missing .:  0/106

                            mean:   166.774
                        std. dev:   196.336

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0      93.5       232       437

          --------------------------------------------------------------------------------
          a65blk10a                                       65 Years and Older of Black Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,815]                      units:  1
                   unique values:  73                       missing .:  0/106

                            mean:   162.358
                        std. dev:   179.789

                     percentiles:        10%       25%       50%       75%       90%
                                           0        18       102       245       428

          --------------------------------------------------------------------------------
          a65ntv10a                             65 Years and Older of Native American Race
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,19]                       units:  1
                   unique values:  4                        missing .:  0/106

                      tabulation:  Freq.  Value
                                     103  0
                                       1  7
                                       1  9
                                       1  19

          --------------------------------------------------------------------------------
          a65hsp10a                         65 years and older Persons of Hispanic Origins
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,37]                       units:  1
                   unique values:  19                       missing .:  0/106

                            mean:   4.53774
                        std. dev:   8.96998

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         6        18

          --------------------------------------------------------------------------------
          a65asn10a                     65 Years and Older of Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,99]                       units:  1
                   unique values:  19                       missing .:  0/106

                            mean:   5.04717
                        std. dev:   14.5513

                     percentiles:        10%       25%       50%       75%       90%
                                           0         0         0         0        20

          --------------------------------------------------------------------------------
          hinca10a                Median household income for Asians and Pacific Islanders
          --------------------------------------------------------------------------------

                            type:  numeric (float)

                           range:  [-999,250000]                units:  .0001
                   unique values:  47                       missing .:  0/106

                            mean:   22556.1
                        std. dev:   36538.3

                     percentiles:        10%       25%       50%       75%       90%
                                        -999      -999      -999   44210.5     67500

          --------------------------------------------------------------------------------
          clf15a                                    Civilian Labor Force 16 Years and Over
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [208,4160]                   units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   1585.17
                        std. dev:   808.604

                     percentiles:        10%       25%       50%       75%       90%
                                         615       945      1414      2104      2724

          --------------------------------------------------------------------------------
          clf15aME                  Civilian Labor Force 16 Years and Over Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [68,588]                     units:  1
                   unique values:  89                       missing .:  0/106

                            mean:   222.698
                        std. dev:   90.0224

                     percentiles:        10%       25%       50%       75%       90%
                                         125       150       212       280       338

          --------------------------------------------------------------------------------
          unemp15a                                                              Unemployed
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [15,729]                     units:  1
                   unique values:  95                       missing .:  0/106

                            mean:   196.547
                        std. dev:   123.347

                     percentiles:        10%       25%       50%       75%       90%
                                          68       104       182       250       337

          --------------------------------------------------------------------------------
          unemp15aME                                            Unemployed Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [13,396]                     units:  1
                   unique values:  76                       missing .:  0/106

                            mean:    93.217
                        std. dev:   50.6493

                     percentiles:        10%       25%       50%       75%       90%
                                          44        62      82.5       121       146

          --------------------------------------------------------------------------------
          hinc15a                                                  Median Household Income
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [11295,72050]                units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   34088.1
                        std. dev:   14532.7

                     percentiles:        10%       25%       50%       75%       90%
                                       17837     22147     29464     47549     53934

          --------------------------------------------------------------------------------
          hinc15aME                                Median Household Income Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [1976,25908]                 units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   6954.88
                        std. dev:   3665.68

                     percentiles:        10%       25%       50%       75%       90%
                                        3197      4627    6099.5      8255     11465

          --------------------------------------------------------------------------------
          own15a                                              Owner Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [12,2111]                    units:  1
                   unique values:  104                      missing .:  0/106

                            mean:   577.981
                        std. dev:   388.286

                     percentiles:        10%       25%       50%       75%       90%
                                         174       264       515       754      1084

          --------------------------------------------------------------------------------
          own15aME                            Owner Occupied Housing Units Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [12,206]                     units:  1
                   unique values:  78                       missing .:  0/106

                            mean:   94.7358
                        std. dev:    39.692

                     percentiles:        10%       25%       50%       75%       90%
                                          45        59        95       120       152

          --------------------------------------------------------------------------------
          rent15a                                            Renter Occupied Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [125,2413]                   units:  1
                   unique values:  102                      missing .:  0/106

                            mean:   738.575
                        std. dev:   404.035

                     percentiles:        10%       25%       50%       75%       90%
                                         285       427       670       970      1349

          --------------------------------------------------------------------------------
          rent15aME                          Renter Occupied Housing Units Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [37,262]                     units:  1
                   unique values:  79                       missing .:  0/106

                            mean:   122.594
                        std. dev:    44.547

                     percentiles:        10%       25%       50%       75%       90%
                                          66        90     121.5       145       183

          --------------------------------------------------------------------------------
          incpc15a                                                       Per Capita Income
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [6225,55350]                 units:  1
                   unique values:  106                      missing .:  0/106

                            mean:     22618
                        std. dev:   11342.6

                     percentiles:        10%       25%       50%       75%       90%
                                       10621     14229     18284     32046     38398

          --------------------------------------------------------------------------------
          incpc15aME                                     Per Capita Income Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [1417,14145]                 units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   3577.05
                        std. dev:   2035.51

                     percentiles:        10%       25%       50%       75%       90%
                                        1847      2331      3015      4064      5869

          --------------------------------------------------------------------------------
          npov15a                                                       Persons in Poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [478,7069]                   units:  1
                   unique values:  106                      missing .:  0/106

                            mean:   2906.17
                        std. dev:   1260.53

                     percentiles:        10%       25%       50%       75%       90%
                                        1391      1969    2846.5      3620      4489

          --------------------------------------------------------------------------------
          npov15aME                                     Persons in Poverty Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [81,832]                     units:  1
                   unique values:  98                       missing .:  0/106

                            mean:   343.208
                        std. dev:   138.745

                     percentiles:        10%       25%       50%       75%       90%
                                         198       245     329.5       417       538

          --------------------------------------------------------------------------------
          nbpov15a                                                       Blacks in Poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [35,4521]                    units:  1
                   unique values:  105                      missing .:  0/106

                            mean:    1389.6
                        std. dev:   1021.56

                     percentiles:        10%       25%       50%       75%       90%
                                         156       596      1241      1996      2871

          --------------------------------------------------------------------------------
          nbpov15aME                                     Blacks in Poverty Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [37,700]                     units:  1
                   unique values:  94                       missing .:  0/106

                            mean:   283.849
                        std. dev:   145.342

                     percentiles:        10%       25%       50%       75%       90%
                                         104       181       262       381       481

          --------------------------------------------------------------------------------
          nwpov15a                                                       Whites in Poverty
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [0,5704]                     units:  1
                   unique values:  99                       missing .:  0/106

                            mean:   1250.56
                        std. dev:    1235.4

                     percentiles:        10%       25%       50%       75%       90%
                                           7        45      1109      2124      2882

          --------------------------------------------------------------------------------
          nwpov15aME                                     Whites in Poverty Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [3,619]                      units:  1
                   unique values:  93                       missing .:  0/106

                            mean:   184.491
                        std. dev:   134.648

                     percentiles:        10%       25%       50%       75%       90%
                                          11        46       190       280       365

          --------------------------------------------------------------------------------
          pop15a                                                          Total Population
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [620,7069]                   units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   2998.58
                        std. dev:   1263.14

                     percentiles:        10%       25%       50%       75%       90%
                                        1455      2024    2911.5      3789      4675

          --------------------------------------------------------------------------------
          pop15aME                                        Total Population Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [94,832]                     units:  1
                   unique values:  96                       missing .:  0/106

                            mean:   353.349
                        std. dev:   140.297

                     percentiles:        10%       25%       50%       75%       90%
                                         199       249     333.5       444       538

          --------------------------------------------------------------------------------
          nhwht15a                                     Persons of White Race, Not Hispanic
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [1,5716]                     units:  1
                   unique values:  102                      missing .:  0/106

                            mean:   1291.84
                        std. dev:   1238.78

                     percentiles:        10%       25%       50%       75%       90%
                                          16        75    1168.5      2159      2892

          --------------------------------------------------------------------------------
          nhwht15aME                   Persons of White Race, Not Hispanic Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [3,619]                      units:  1
                   unique values:  95                       missing .:  0/106

                            mean:   191.189
                        std. dev:   135.459

                     percentiles:        10%       25%       50%       75%       90%
                                          20        59     199.5       279       369

          --------------------------------------------------------------------------------
          nhblk15a                                     Persons of Black Race, Not Hispanic
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [18,4544]                    units:  1
                   unique values:  105                      missing .:  0/106

                            mean:   1424.92
                        std. dev:   1034.73

                     percentiles:        10%       25%       50%       75%       90%
                                         156       631      1315      2029      2878

          --------------------------------------------------------------------------------
          nhblk15aME                   Persons of Black Race, Not Hispanic Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [29,760]                     units:  1
                   unique values:  100                      missing .:  0/106

                            mean:   288.019
                        std. dev:   150.258

                     percentiles:        10%       25%       50%       75%       90%
                                         104       182       269       381       474

          --------------------------------------------------------------------------------
          hu15a                                                              Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [484,3419]                   units:  1
                   unique values:  103                      missing .:  0/106

                            mean:   1656.52
                        std. dev:   633.664

                     percentiles:        10%       25%       50%       75%       90%
                                         904      1189      1591      2003      2593

          --------------------------------------------------------------------------------
          hu15aME                                            Housing Units Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [25,120]                     units:  1
                   unique values:  61                       missing .:  0/106

                            mean:   65.8396
                        std. dev:   23.5429

                     percentiles:        10%       25%       50%       75%       90%
                                          38        47        64        80       100

          --------------------------------------------------------------------------------
          vac15a                                                      Vacant Housing Units
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [26,1449]                    units:  1
                   unique values:  98                       missing .:  0/106

                            mean:   339.962
                        std. dev:    193.47

                     percentiles:        10%       25%       50%       75%       90%
                                         145       213       313       435       523

          --------------------------------------------------------------------------------
          vac15aME                                    Vacant Housing Units Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [31,208]                     units:  1
                   unique values:  72                       missing .:  0/106

                            mean:   103.557
                        std. dev:   36.4033

                     percentiles:        10%       25%       50%       75%       90%
                                          62        75       101       122       149

          --------------------------------------------------------------------------------
          hincb15a                                          Median Household Income Blacks
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [11295,52799]                units:  1
                   unique values:  91                       missing .:  15/106

                            mean:   25476.7
                        std. dev:   9338.93

                     percentiles:        10%       25%       50%       75%       90%
                                       14931     18924     23154     29620     38254

          --------------------------------------------------------------------------------
          hincb15aME                        Median Household Income Blacks Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [1835,46753]                 units:  1
                   unique values:  91                       missing .:  15/106

                            mean:   8372.95
                        std. dev:   6886.99

                     percentiles:        10%       25%       50%       75%       90%
                                        3077      4609      6571     10146     15221

          --------------------------------------------------------------------------------
          hincw15a                                          Median Household Income Whites
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [10909,115547]               units:  1
                   unique values:  73                       missing .:  33/106

                            mean:   49782.6
                        std. dev:   18820.6

                     percentiles:        10%       25%       50%       75%       90%
                                       25000     38077     49988     59559     68990

          --------------------------------------------------------------------------------
          hincw15aME                        Median Household Income Whites Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [2520,107651]                units:  1
                   unique values:  73                       missing .:  33/106

                            mean:   12452.8
                        std. dev:   13162.3

                     percentiles:        10%       25%       50%       75%       90%
                                        5471      7148      9157     13443     18916

          --------------------------------------------------------------------------------
          mhmval15a                                                      Median Home Value
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [35800,423100]               units:  100
                   unique values:  101                      missing .:  3/106

                            mean:    123151
                        std. dev:   71602.5

                     percentiles:        10%       25%       50%       75%       90%
                                       55900     65200    108700    158700    208800

          --------------------------------------------------------------------------------
          mhmval15aME                                                    Median Home Value
          --------------------------------------------------------------------------------

                            type:  numeric (long)

                           range:  [3619,297173]                units:  1
                   unique values:  103                      missing .:  3/106

                            mean:   22544.7
                        std. dev:   34243.9

                     percentiles:        10%       25%       50%       75%       90%
                                        5654      7022     11218     23651     50969

          --------------------------------------------------------------------------------
          mrent15a                                            Median Monthly Contract Rent
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [247,1036]                   units:  1
                   unique values:  91                       missing .:  1/106

                            mean:   564.343
                        std. dev:   127.537

                     percentiles:        10%       25%       50%       75%       90%
                                         444       490       537       605       712

          --------------------------------------------------------------------------------
          mrent15aME                          Median Monthly Contract Rent Margin of Error
          --------------------------------------------------------------------------------

                            type:  numeric (int)

                           range:  [12,244]                     units:  1
                   unique values:  64                       missing .:  1/106

                            mean:    61.181
                        std. dev:   40.8696

                     percentiles:        10%       25%       50%       75%       90%
                                          23        36        48        72       122

          . quietly log close codebook

          . quietly log close markdoc


