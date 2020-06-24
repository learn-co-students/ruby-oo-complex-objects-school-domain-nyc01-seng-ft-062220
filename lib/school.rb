# code here!
class School
    attr_accessor :name, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
       if @roster[grade] == nil
         @roster[grade] = []
       end
        @roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |k, v|
            sorted_roster[k] = v.sort
        end
        sorted_roster.to_h
    end
end