require "pry"

class School
    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster =  {}
    end

    def add_student(name, grade)
        # if roster[grade] is falsy(nil, false or undefined) then assign [] otherwise keep roster[grade] intact!
        roster[grade] ||= []
        roster[grade].push(name)
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        n_roster = {}
        roster.each do |grade, name|
            n_roster[grade] = name.sort
    
        end
        n_roster
    end
end

