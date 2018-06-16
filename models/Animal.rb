class Animal

  attr_accessor :id, :AnimalName, :SpeciesName

  def self.open_connection
    conn = PG.connect( dbname: 'animal')
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM animal ORDER BY id"

    results = conn.exec(sql)

    animals = results.map do |animal|
      self.hydrate animal
    end

    animals

  end

  def self.find id
    conn = self.open_connection

    sql = "SELECT * FROM animal WHERE id=#{id} LIMIT 1"

    animals = conn.exec(sql)

    animal = self.hydrate cars[0]

    animal
  end

end
