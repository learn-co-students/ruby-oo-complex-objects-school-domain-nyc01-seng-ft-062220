require "pry"

class School
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
        # binding.pry
    end

    def grade(grade)
        @roster.find do |level, student|
            if level  == grade 
                return student
            end
        end
    end

    def sort
        sort_list = {}
        @roster.each do |grade, student|
            sort_list[grade] = student.sort
            # binding.pry
        end
        sort_list
    end

end

flatiron = School.new("flatiron")

flatiron.add_student("alex", 20)

# puts flatiron.grade(20)

puts flatiron.roster

