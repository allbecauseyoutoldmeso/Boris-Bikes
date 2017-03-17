require "./lib/docking_station"
require "./lib/van"
require "./lib/bike"

puts docking_station = DockingStation.new
puts bike = Bike.new
puts bike.report_broken
puts docking_station.dock(bike)
puts docking_station.broken_bikes
puts van = Van.new
puts van.collect(docking_station.broken_bikes) 