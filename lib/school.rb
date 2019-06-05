class School 

    attr_accessor :name,:roster,:student  

    def initialize(name)
        @name=name
        @roster={}
    end 

    def add_student(new_student,grade) 
    if roster.include?(grade) 
    roster[grade]<<new_student 
    else 
    @roster[grade] =[]
    @roster[grade] << new_student 
    end 
end 

    def grade(grade_given)
    roster[grade_given]
    end 



    def sort 
        sorted={}
        roster.each do |grade,student|
            sorted[grade]=student.sort
    end
    sorted
end  

end 