#require 'pry'
class School
    
   #name
   def initialize(name)
    @name = name
    @student_list = {}
   end

   #roster
   def roster
    @student_list
   end

   #add_student(name, grade_num)
   def add_student(name, grade_num)
        if @student_list[grade_num]
            @student_list[grade_num].push(name)
        else    
            @student_list[grade_num] = [name]
        end
    end
   #grade(grade_num)
    def grade(grade_num)
        @student_list[grade_num]
    end
   #sort
   def sort
    fin = {}
    sorted = @student_list.sort.to_h
    sorted.each {|key, value|  fin[key] = value.sort } 
    fin
  end
end