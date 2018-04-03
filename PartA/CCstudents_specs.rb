
require ('minitest/autorun')
require_relative ('ccstudent_account.rb')

class TestStudentAccount < MiniTest::Test

  def setup()
    @student_account = StudentAccount.new("Frank", 15)
  end

  def test_student_name
    assert_equal("Frank", @student_account.student_name)
  end

  def test_student_cohort
    assert_equal(15, @student_account.cohort)
  end

  def test_set_student_name
    @student_account.set_student_name ("Bob")
    assert_equal("Bob", @student_account.student_name)
  end

  def test_set_cohort
    @student_account.set_cohort(5)
    assert_equal(5, @student_account.cohort)
  end

  def test_student_talk
  assert_equal("I can talk!", @student_account.student_talk("I can talk!"))
  end

  def test_favourite_language
    assert_equal("I love Ruby!", @student_account.favourite_langage("Ruby"))
  end

end
