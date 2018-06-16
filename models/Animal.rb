class Animal

  attr_accessor :id, :name, :species

  def self.open_connection
    conn = PG.connect( dbname: 'animal')
  end

  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM animal_data ORDER BY id"

    results = conn.exec(sql)

    #ALL WORKING FINE UP TO THIS POINT

    animals = results.map do |animal|
      self.hydrate animal
    end

    animals

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM animal_data WHERE id=#{id} LIMIT 1"

    animals = conn.exec(sql)

    animal = self.hydrate animals[0]

    animal

  end

  def self.hydrate animal_data
    animal = Animal.new

    animal.id = animal_data["id"]
    animal.name = animal_data["name"]
    animal.species = animal_data["species"]

    animal

  end



end
