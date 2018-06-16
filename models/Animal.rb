class Car
  attr_accessor :id, :name, :species

  def self.open_connection
    conn = PG.connect( dbname: 'animal')
  end

  

  def self.hydrate animal
    animal = Animal.new

    animal.id = animal["id"]
    animal.name = animal["name"]
    animal.species = animal["species"]

    animal

  end



end
