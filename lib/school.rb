class School

attr_accessor :roster, :school, :name, :grade

    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end
    
    def add_student(name, grade)
        
        if  !roster[grade].nil? 
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each { |grade, name| sorted[grade] = name.sort }
        sorted
    end

end