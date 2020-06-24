# code here!
class School 
    attr_accessor :name
    attr_reader :roster
    def initialize (name)
        @name = name
        @roster = {}
    end
    def add_student(name,number)
        if @roster[number]
            @roster[number] << name
        else   
            @roster[number] = [name]
        end
        @roster
    end    
    
    def grade(number)
        @roster[number]
    end
    def sort
        @roster.each {|key,value| @roster[key] = value.sort  }

        @roster
    end
end
