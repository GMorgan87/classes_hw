class Team

  def initialize(name,  players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def get_name
    return @name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

end
