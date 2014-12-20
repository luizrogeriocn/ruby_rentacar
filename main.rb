require_relative 'Client'
require_relative 'Rental'
require_relative 'Vehicle'

roger = Client.new('rogerio', 18, true, 1)
car = Vehicle.new(15, 'jeep', 2010, 70)
rental = Rental.new()

rental.add_client(roger)
rental.add_vehicle(car)
rental.rent(roger, 15)
p roger.vehicle
p 'available: '+ rental.available_vehicles.to_s
p 'rented: ' + rental.rented_vehicles.to_s
rental.return_vehicle(roger, 15)
p roger.vehicle
p 'available: ' + rental.available_vehicles.to_s
p 'rented: ' + rental.rented_vehicles.to_s
rental.delete_vehicle(15)
p 'available: ' + rental.available_vehicles.to_s
p 'rented: ' + rental.rented_vehicles.to_s
rental.clients[0].greet
