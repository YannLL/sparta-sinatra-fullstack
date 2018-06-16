class Animal

  attr_accessor :id, :name, :species

  def self.open_connection
    conn = PG.connect( dbname: 'animals')
  end

  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM animal ORDER BY id"

    results = conn.exec(sql)

    #ALL WORKING FINE UP TO THIS POINT

    animals = results.map do |animal|
      self.hydrate animal
    end

    animals

  end

  def self.hydrate animal
    animal = Animal.new

    animal.id = animal["id"]
    animal.name = animal["name"]
    animal.species = animal["species"]

    animal

  end



end
