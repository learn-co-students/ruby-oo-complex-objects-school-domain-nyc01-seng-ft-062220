require 'pry'

class School
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    if roster[grade]
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(number)
    return roster[number]
  end

  def sort
    roster.sort.to_h
    roster.each do |key, value|
      value = value.sort
      roster[key] = value
    end
  end

  def name
    @name
  end

  def roster
    @roster
  end

end

