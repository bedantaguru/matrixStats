# CRAN submission matrixStats 0.52.2

on 2017-04-13

Submitting a hot fix since the package may core dump R if user passes an unsupported data type to some of the functions.

Thanks in advance


## Notes not sent to CRAN

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R 3.2.4 Revised (2016-03-16 r70336)
  - R version 3.3.3 (2017-03-06)
  
* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.2.5 (2016-04-14)
  - R version 3.3.3 (2017-03-06)
  - R Under development (unstable) (2017-04-11 r72503)

* Platform x86_64-unknown-linux-gnu (64-bit) w/ valgrind [Travis CI]:
  - R version 3.3.3 (2017-03-06)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 2.12.2 (2011-02-25)
  - R version 2.13.1 (2011-07-08)
  - R version 2.15.3 (2013-03-01)
  - R version 3.0.3 (2014-10-31)
  - R version 3.1.2 (2014-10-31)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.3.3 (2017-03-06)
  - R Under development (unstable) (2017-04-03 r72474)

* Platform x86_64-pc-linux-gnu (64-bit) w/ ASan/UBSan [r-hub]:
  - R Under development (unstable) (2016-09-18 r71304)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.3.3 (2017-03-06)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2017-04-10 r72501)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.3.3 (2017-03-06)
  - R Under development (unstable) (2017-04-01 r72468)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.0 beta (2017-04-08 r72499)
