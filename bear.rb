class Bear
  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(river, fish)
    @stomach << fish
    river.remove_fish(fish)
  end
end
