class Client
  attr_accessor :name, :age, :has_license, :id, :vehicle

  def initialize(name, age, hasLicense, id)
    @name = name
    @age = age
    @hasLicense = hasLicense
    @id = id
    @vehicle = nil
  end

  def greet()
    p 'Hi, '+ @name
  end
end
