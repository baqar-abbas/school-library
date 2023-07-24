require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

# Sample Object instantiation and method call
teacher = Teacher.new(30, 'Mathematics', 'Jack')
puts teacher.can_use_services?
