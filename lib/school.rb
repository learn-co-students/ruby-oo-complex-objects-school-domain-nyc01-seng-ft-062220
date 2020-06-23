# code here!
require 'pry'

class School

    def initialize(roster)
        @roster={}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if !roster.has_key?(grade)
          @roster[grade] = []
          @roster[grade] << student
        else
            @roster[grade] << student 
        end
    end

    def grade(grade)
        @roster[grade].sort
    end

    def sort
        @roster.map do |key,value|
          @roster[key] = value.sort
        end
        @roster
     end

end

# [2] pry(#<School>)> @roster
# => {9=>["Homer Simpson"],
#  10=>["Avi Flombaum", "Jeff Baird"],
#  7=>["Blake Johnson"]}
# [3] pry(#<School>)> grade(10)