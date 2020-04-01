# code here!
require 'pry'
class School

    def initialize(name)
        @name = name
        @roster = {}
    end
    attr_reader :name, :roster

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.sort.each do |grade, student|
            sorted[grade] = (student.sort)
        end
        sorted
    end

end