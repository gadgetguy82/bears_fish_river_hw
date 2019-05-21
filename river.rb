class River
  attr_reader :name, :fish_list

  def initialize(name)
    @name = name
    @fish_list = []
  end

  def add_to_river(fish)
    @fish_list << fish
  end

  def fish_count
    return fish_list.length
  end

  def remove_fish(fish)
    @fish_list.delete(fish)
  end
end
