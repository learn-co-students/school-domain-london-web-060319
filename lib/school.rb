# code here!
class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster.include? grade
            roster[grade] << name
        else 
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, student| 
            sorted[grade] = student.sort
        end
        sorted
    end
end
