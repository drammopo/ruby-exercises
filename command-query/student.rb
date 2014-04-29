class Student
  attr_reader :grade
GRADES = ['A','B','C','D','E','F']
  def initialize
    @grade = 'C'
  end

  def study
    new_grade = GRADES.index(grade) - 1
    new_grade = 0 if (GRADES.index(grade) - 1) < 0
    @grade = GRADES[new_grade]
  end

  def slack_off
    new_grade = GRADES.index(grade) + 1
    new_grade = 5 if (GRADES.index(grade) + 1) >= 5
    @grade = GRADES[new_grade]
  end

end