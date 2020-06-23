# code here!
require 'pry'

class School

attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)

        if @roster.has_key?(grade) == false
            @roster[grade] = []
        end

        @roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        @roster.each do |grade,value|
            value.sort!
        end
    end

end