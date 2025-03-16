library(marinecs100b)


# Writing a utility function ----------------------------------------------

# P1: How did you extract the temperature and exposure from the hottest day?
# Copy-paste the code here.
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
                      kefj_datetime >= hotday_start &
                      kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]

# P2: Fill in the blanks below to write the Alaskan datetime utility function.
datetime <- function(datetime_input){
  x <- as.POSIXct(datetime_input, tz="Etc/GMT+8")
    return(x)
}
datetime("2020-02-02 16:00")
# Extracting data ---------------------------------------------------------

# P3: Make a copy of your code from P1 and edit it to plot the temperature and
# exposure for "Aialik" on 2012-06-01

kefj_site <- "Aialik"
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2012-06-01 00:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2012-06-01 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- which(kefj_site == hottest_site &
                      kefj_datetime >= hotday_start &
                      kefj_datetime <= hotday_end)
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)


# P4: Make a copy of your code from P3 and edit it to plot the temperature and
# exposure for "Harris" on 2016-04-05.
site <- "Harris"
Harris_day_start <- as.POSIXct("2016-04-05 00:00:00", tz = "Etc/GMT+8")
Harris_day_end <- as.POSIXct("2016-04-05 23:59:59", tz = "Etc/GMT+8")
Harris_day_idx <- which(kefj_site == site &
                      kefj_datetime >= Harris_day_start &
                      kefj_datetime <= Harris_day_end)
Harris_day_datetime <- kefj_datetime[Harris_day_idx]
Harris_day_temperature <- kefj_temperature[Harris_day_idx]
Harris_day_exposure <- kefj_exposure[Harris_day_idx]
plot_kefj(Harris_day_datetime, Harris_day_temperature, Harris_day_exposure)

# P5: Compare your solutions for P3 and P4 - what variables changed?
#site, datetime, and idex were changed

# P6: What you would pick for the temperature extraction function and
# parameters' names?
#temp(datetime,site)

# Writing extraction functions --------------------------------------------

# P7: Fill in the blanks in the code below to write your temperature extraction
# function.

temp_extraction <- function (start, end, site) {
  datetime_start <- datetime(start)
  datetime_end <- datetime(end)
  site
    return(temp)
}

# P8: Make a copy of your solution to P7, and edit it to create exposure and
# datetime extraction functions.

exposure_extraction <- function (start, end, site) {
  datetime_start <- datetime(start)
  datetime_end <- datetime(end)
  site
  return(exposure)
}

datetime_extraction <- function (start, end, site) {
  datetime_start <- datetime(start)
  datetime_end <- datetime(end)
  site
  return(datetime)
}
# P9: Export your annotated screenshot as a JPEG called "annotated_function.jpg"
# and add it to your copy of the module repository. (It should be in the same
# folder as this file.)

# P10: Visualize Nuka Pass on July 1, 2018.
kefj_site <- "Nuka Pass"
day_start <- as.POSIXct("2018-07-01 00:00:00", tz= "Etc/GMT+8")
day_end <- as.POSIXct("2018-07-01 23:59:59", tz= "Etc/GMT+8")
plot_kefj(temp_extraction, exposure_extraction, datetime_extraction)
# ok so i think im going in the right direction here however im getting an
# error

# P11: Save a copy of the Nuka Pass plot as "nuka_pass_2018-07-01.png" in this
# repo

# P12: Compare the code you wrote to create the plot in this module to the code
# you wrote in PROG101. Qualitatively, how do they compare? Which one is easier
# to read and why?library(marinecs100b)
#the codes seem pretty similar to me since they both use similar features such
# as kefj and as.POSIXct however this may be because I dont have a full enough
# understanding of each to clearly see differences. The graphs from prog 102
# do seem a bit easier to understand though, especially because a lot of the
# elements going into the graph are defined before.

