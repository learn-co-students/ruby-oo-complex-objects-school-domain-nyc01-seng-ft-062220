class School
    attr_accessor :roster
    attr_writer :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end        
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each{|grade_key, name_array_value|
            sorted_roster[grade_key] = name_array_value.sort
        }
        return sorted_roster
    end

end


# code here!