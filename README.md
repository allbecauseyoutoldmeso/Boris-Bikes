# Boris Bikes Challenge

* Week 1 at Makers Academy.
* Test driven Ruby project.
* The challenge was to recreate the logic behind London's Boris Bikes.
* To play with the code clone this repository, navigate to the folder, open `pry` or `irb` and do something like the following...

```  
[1] pry(main)> require './lib/docking_station.rb'  
=> true  
[2] pry(main)> docking_station = DockingStation.new  
=> #<DockingStation:0x007ff1ec0282b8 @capacity=20, @stored_bikes=[]>  
[3] pry(main)> bike = Bike.new  
=> #<Bike:0x007ff1ed9c93e8 @working=true>  
[4] pry(main)> bike.report_broken  
=> false  
[5] pry(main)> docking_station.dock(bike)  
=> [#<Bike:0x007ff1ed9c93e8 @working=false>]  
[6] pry(main)> docking_station.broken_bikes  
=> [#<Bike:0x007ff1ed9c93e8 @working=false>]  
[7] pry(main)> van = Van.new  
=> #<Van:0x007ff1ed81eef8>  
[8] pry(main)> van.collect(docking_station.broken_bikes)  
=> [#<Bike:0x007ff1ed9c93e8 @working=false>]  
[9] pry(main)> garage = Garage.new  
=> #<Garage:0x007ff1ed9f2400>  
[10] pry(main)> garage.receive_delivery(van.delivery)  
=> [#<Bike:0x007ff1ed9c93e8 @working=false>]  
[11] pry(main)> garage.fix_bikes  
=> [#<Bike:0x007ff1ed9c93e8 @working=true>]  
[12] pry(main)> van.collect(garage.mended_bikes)  
=> [#<Bike:0x007ff1ed9c93e8 @working=true>]  
[13] pry(main)>
```
