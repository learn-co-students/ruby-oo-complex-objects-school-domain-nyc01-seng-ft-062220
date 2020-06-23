require 'pry'

class School

    def initialize(roster)
        @roster = {}
    end

    attr_reader :roster

    
    def add_student(student, grade)
        @grade = grade
        if @roster.has_key?(grade)
           @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each {|k, v| @roster[k] = v.sort}
    end

end

