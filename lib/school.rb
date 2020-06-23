require 'pry'
class School

def initialize(name)
@roster = {}
@name = name
end

def name
    @name
end

def add_student(name, grade)
    if !@roster[grade] 
        @roster[grade] = [] #this should happen if the grade does not exist
        @roster[grade] << name
    else
        @roster.each do |array_of_grade_data|
            if array_of_grade_data[0] == grade
                array_of_grade_data[1] << name
            end
        end
    end
end

    def roster
        @roster
    end

    def grade(grade)
        @roster.each do |array_of_grade_data|
            if array_of_grade_data[0] == grade
                return array_of_grade_data[1]
            end
        end
    end

    def sort
        new_roster = {}
        @roster.each do |array_of_grade_data|
            x = array_of_grade_data[1].sort
            new_roster[array_of_grade_data[0]] = x
        end
        @roster = new_roster
    end


end