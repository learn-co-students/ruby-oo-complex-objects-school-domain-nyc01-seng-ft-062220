# code here!
require "pry"

class School
    attr_reader :name, :roster

    def initialize (name, roster={})
        @name = name
        @roster = roster
    end

    def add_student (student_name, grade)
            
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << student_name
        elsif
            @roster[grade] << student_name
        end

    end


    def grade (grade)
        @roster[grade]
    end


    def sort
        
        @roster.map do |key, value|
            @roster[key] = value.sort
        end
        @roster
    end


end   