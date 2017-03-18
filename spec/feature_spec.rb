require "./lib/docking_station"
require "./lib/van"
require "./lib/garage"
docking_station = DockingStation.new
bike = Bike.new
bike.report_broken
docking_station.dock(bike)
docking_station.broken_bikes
van = Van.new
van.collect(docking_station.broken_bikes)
garage = Garage.new
garage.receive_delivery(van.delivery)
garage.fix_bikes
van.collect(garage.mended_bikes)
