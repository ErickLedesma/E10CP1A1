require 'faker'
module Test
    def result
        average = (@grade1 + @grade2) / 2
        puts "Persona: #{@alumn}"
        if average > 4
            puts 'Estudiante aprobado'
        else   
            puts 'Estudiante reprobado'
        end
    end 
end 

module Attendance
    def student_quantity
        student_qty
    end
end 

class Student
    attr_accessor :alumn, :grade1, :grade2
    @@student_quantity = 0
    @student_qty = 0
    def initialize(alumn, grade1, grade2)
        @alumn = alumn
        @grade1 = grade1
        @grade2 = grade2
        @@student_quantity += 1
    end 
    include Test
    extend  Attendance
    def self.student_qty
        @@student_quantity
    end
end

(1..10).each do
    r = Random.new
    student = Student.new(Faker::Simpsons.character, r.rand(1..7), r.rand(1..7))
    puts student.result
end 

puts "Cantidad de alumnos #{Student.student_quantity}"

