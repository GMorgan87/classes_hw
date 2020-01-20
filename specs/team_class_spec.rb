require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../team_class')

class TestTeamClass < Minitest::Test

  def setup
    @team = Team.new("E37",["Gareth","Fraser", "Nick", "Balazs"], "Eugene")
  end

  def test_get_name
    assert_equal("E37", @team.get_name)
  end

end
