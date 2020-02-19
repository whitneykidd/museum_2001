class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def admit(patron)
    @patrons << patron
  end

  def recommend_exhibits(patron)
    exhibits.find_all do |exhibit|
      if patron.interests.include?(exhibit.name) == true
        exhibits
      end
    end
  end

  def patron_interests(exhibit)
    @patrons.find_all do |patron|
     patron.interests.include?(exhibit.name)
    end
  end
end
