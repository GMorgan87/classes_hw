require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../student_class')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Gareth", "E37")
  end

  def test_get_name
    assert_equal("Gareth", @student.get_name)
  end

  def test_get_cohort
    assert_equal("E37", @student.get_cohort)
  end

  def test_set_name
    assert_equal("Fraser", @student.set_name("Fraser"))
  end

  def test_set_cohort
    assert_equal("E1", @student.set_cohort("E1"))
  end

  def test_talk
    assert_equal("I can talk", @student.talk())
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end

end
