class Location
	attr_accessor :client, :vehicle, :duration

	def initialize(client, vehicle, duration)
		@client = client
		@vehicle = vehicle
		@duration = duration
	end

	def add_duration(days)
		@duration += days
	end
end