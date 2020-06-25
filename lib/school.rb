# code here!
class School
    def initialize(student)
        @student = student
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student (student, grade)
        @roster[grade] ||= []
        # if self.roster[grade] already exists, leave it alone!
        #else, set self.roster[grade] = []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student|
            student.sort!
        end
    end


end
