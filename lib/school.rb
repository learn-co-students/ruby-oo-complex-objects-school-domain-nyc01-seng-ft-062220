# code here!
class School
    def initialize(name, roster={})
        @name = name
        @roster = roster
    end    

    def roster
        @roster
    end

    def add_student(st_name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end    
        @roster[grade].push(st_name) 
    end     

    def grade(grade)
        return @roster[grade]
    end     

    def sort
        sorted = {}
        roster.each do |key, value|
            sorted[key] = value.sort 
        end
        sorted  
    end             
end    