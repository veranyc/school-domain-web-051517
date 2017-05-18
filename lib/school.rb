require "pry"
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  #  @grade = []
  #  @students = []
  end

  def add_student(student, grade)
    if roster.include?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    return roster.each do |grade, students|
      roster[grade] = students.sort!
    end
  end

end
