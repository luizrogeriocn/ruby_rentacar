require_relative 'Location'

class Rental
  attr_accessor :clients, :available_vehicles, :rented_vehicles, :rentals

  def initialize()
    @clients = []
    @available_vehicles = []
    @rented_vehicles = []
    @rentals = []
  end

  def add_client(client)
    @clients.push(client)
  end

  def add_vehicle(vehicle)
    @available_vehicles.push(vehicle)
  end

  def delete_vehicle(vehicle_id)
    index = is_available(vehicle_id)
    vehicle = nil
    if index
      vehicle = @available_vehicles.slice!(index)
    end
    vehicle
  end

  def rent(client, vehicle_id)
    index = is_available(vehicle_id)
    vehicle = nil
    if index
      vehicle = @available_vehicles.slice!(index)
      @rented_vehicles.push(vehicle)
      client.vehicle = vehicle
    end
    client
  end

  def return_vehicle(client, vehicle_id)
    index = is_rented(vehicle_id)
    if index
      vehicle = @rented_vehicles.slice!(index)
      @available_vehicles.push(vehicle)
      client.vehicle = nil
    end
    client
  end

  def calculate_fee(vehicle)
    vehicle.damage*100
  end

  def is_rented(id)
    res = nil
    for i in 0..(@rented_vehicles.length) -1
      if @rented_vehicles[i].id == id
        res = i
      end
    end
    res
  end

  def is_available(id)
    res = nil
    for i in 0..(@available_vehicles.length) -1
      if @available_vehicles[i].id == id
        res = i
      end
    end
    res
  end
  
end
