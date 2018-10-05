# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This method is used below to create the ferries. Define the start date, end date, and ferry times for that date range.
def createFerries(startDate, endDate, to_times, from_times)
  (Date.parse(startDate)..Date.parse(endDate)).each do |date|
    for time in to_times do
      Ferry.create(location: "To Island", time: Time.zone.parse(date.to_s + " " + time))
    end
    for time in from_times do
      Ferry.create(location: "From Island", time: Time.zone.parse(date.to_s + " " + time))
    end
  end
end
# Spring
createFerries(
  "2018-03-23",
  "2018-04-27",
  ["8:00", "9:30", "11:00", "13:00", "15:00", "17:00"],
  ["7:00", "8:45", "10:15", "12:00", "14:00", "16:00"]
)
createFerries(
  "2018-04-28",
  "2018-06-21",
  ["8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00"],
  ["7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00"]
)
# Summer
createFerries(
  "2018-06-22",
  "2018-09-03",
  ["7:30", "8:15", "9:00", "9:45", "10:15", "10:45", "11:15", "11:45", "12:15", "12:45", "13:15", "13:45", "14:15", "14:45", "15:15", "15:45", "16:15", "16:45", "17:15", "17:45", "18:15", "18:45"],
  ["6:45", "7:30", "8:15", "9:00", "9:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00"]
)
# Fall
createFerries(
  "2018-09-04",
  "2018-10-28",
  ["8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00"],
  ["7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00"]
)
createFerries(
  "2018-10-29",
  "2018-12-02",
  ["8:00", "9:30", "11:00", "13:00", "15:00", "17:00"],
  ["7:00", "8:45", "10:15", "12:00", "14:00", "16:00"]
)
# Winter
createFerries(
  "2018-12-03",
  "2018-12-24",
  ["9:00", "11:00", "14:15", "16:30"],
  ["8:00", "10:00", "13:00", "15:30"]
)
createFerries(
  "2018-12-25",
  "2018-12-25",
  ["11:00"],
  ["10:00"]
)
createFerries(
  "2018-12-26",
  "2019-01-02",
  ["9:00", "11:00", "14:15", "16:30"],
  ["8:00", "10:00", "13:00", "15:30"]
)
createFerries(
  "2019-01-03",
  "2019-03-21",
  ["9:30", "14:30"],
  ["8:00", "13:00"]
)
createFerries(
  "2018-08-11",
  "2018-08-11",
  ["22:30"],
  ["21:45"]
)

# Night Trips
def createNightFerries(startDate, endDate, dayOfWeek, to_times, from_times)
  (Date.parse(startDate)..Date.parse(endDate)).each do |date|
    for time in to_times do
      if date.strftime("%A") == dayOfWeek
        Ferry.create(location: "To Island", time: Time.zone.parse(date.to_s + " "  + time))
      end
    end
    for time in from_times do
      if date.strftime("%A") == dayOfWeek
        Ferry.create(location: "From Island", time: Time.zone.parse(date.to_s + "  " + time))
      end
    end
  end
end
createNightFerries(
  "2018-04-06",
  "2018-11-02",
  "Friday",
  ["19:45", "21:15"],
  ["19:00", "20:30"]
)
createNightFerries(
  "2018-06-22",
  "2018-08-31",
  "Friday",
  ["20:15"],
  ["19:30"]
)
createNightFerries(
  "2018-06-22",
  "2018-08-10",
  "Friday",
  ["22:30"],
  ["21:45"]
)
createNightFerries(
  "2018-06-09",
  "2018-08-24",
  "Saturday",
  ["20:15"],
  ["19:30"]
)
createNightFerries(
  "2018-08-25",
  "2018-08-25",
  "Saturday",
  ["19:45", "20:15", "21:15"],
  ["19:00", "19:30", "20:30"]
)
createNightFerries(
  "2018-08-26",
  "2018-09-01",
  "Saturday",
  ["20:15"],
  ["19:30"]
)
createNightFerries(
  "2018-06-10",
  "2018-09-02",
  "Sunday",
  ["20:15"],
  ["19:30"]
)
