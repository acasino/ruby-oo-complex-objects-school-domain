# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name #initialize name
        @roster = {} #initialize an empty hash roster
    end

    def add_student(student_name, grade) #study this method of creating new key and shovel to empty array
        roster[grade] ||= [] #documentation on || usage?
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade] #return the values for the input student_grade key
    end

    def sort
        sorted = {} #create empty hash for sorting
        roster.each do |grade, students| #for each grade/students in the roster,
            sorted[grade] = students.sort  #sort the students in each grade key of sorted
        end
        sorted #call sorted to return
    end
end
