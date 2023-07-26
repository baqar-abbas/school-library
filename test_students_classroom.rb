# Test associations between students and classroom. Sample code and output below:
# plese note: This will be removed in the final version of the project as it defined to check ...
# correct implementation of the associations bewteen classromm and student.
require './person'
require './classroom'
require './student'

# New student object created
student1 = Student.new('Science', 18, 'John')

# New classroom object created
classroom1 = ClassRoom.new('Mathematics')
puts classroom1.label
# output => Mathematics
puts classroom1.students
classroom1.add_student(student1)
puts classroom1.students

puts student1.classroom
puts student1.classroom.label
#  Outputs => Mathematics

puts classroom1.students[0].name
# John
