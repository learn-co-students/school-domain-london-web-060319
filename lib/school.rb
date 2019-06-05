require 'pry'

class School

    attr_reader :roster # {grade => [students]}
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(students_name, grade)
        check_if_grade_is_key?(grade)
        @roster[grade] << students_name
    end

    #check if grade is already a key inside roster
    def check_if_grade_is_key?(grade)
        if @roster.keys.include?(grade)
        else
            @roster[grade] = []
        end
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each { |grade, students| students.sort! } 
    end
    
end