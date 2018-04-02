

class StudentAccount

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name()
    return @student_name
  end

  def cohort()
    return @cohort
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def student_talk(talk)
    return talk
  end

  def favourite_langage(language)
    return language
  end

end
