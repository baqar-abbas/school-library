require_relative 'person'
require './classroom'

class Student < Person
  attr_reader :classroom, :id
  attr_accessor :name

  def initialize(classroom, age, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = json_data
  end

  def play_hooky
    '¯\(ツ)/¯'
  end


  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  # def student_data_to_json(*arg)
  #   {       
  #     'type' => self.class.name,
  #   'age'=> @age,
  #   'name'=> @name,
  #   'id'=> @id
  #   }.to_json(*arg)
  # end
end
