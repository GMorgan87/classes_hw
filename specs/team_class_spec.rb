require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../team_class')

class TestTeamClass < Minitest::Test

  def setup
    @team = Team.new("E37",["Gareth","Fraser", "Nick", "Balazs"], "Eugene")
  end

  def test_get_name
    assert_equal("E37", @team.name)
  end

  def test_get_players
    assert_equal(["Gareth","Fraser", "Nick", "Balazs"], @team.players)
  end

  def test_get_coach
    assert_equal("Eugene", @team.coach)
  end

  def test_change_coach
    @team.coach = "Zsolt"
    assert_equal("Zsolt", @team.coach)
  end

  def test_new_player
    @team.new_player("Noel")
    assert_equal(["Gareth","Fraser", "Nick", "Balazs", "Noel"], @team.players)
    
  end

end
