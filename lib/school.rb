# code here!
class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)    
        if roster[grade].nil?
            roster[grade] = []
        end
        roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, student_names| 
            sorted_roster[grade] = student_names.sort
        end
        sorted_roster
    end
end

