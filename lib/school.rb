class School
    attr_reader :roster
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade] == nil
            @roster[grade] = Array.new
        end
        @roster[grade] << student
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