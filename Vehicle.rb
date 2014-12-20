class Vehicle
  attr_accessor :model, :year, :price, :damage,:id

  def initialize(id, model, year, price)
    @model = model
    @year = year
    @price = price
    @damage = 0;
    @id = id
  end

  def cause_damage
  	damage += 1
  end
end
