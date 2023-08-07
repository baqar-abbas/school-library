require './nameable'
require './trimmer_decorator'
require './capitalize_decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    # @student=[]
  end

  def add_rental(rental)
    @rentals << rental
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def student_data_to_json(*arg)
    {       
      'type' => self.class.name,
    'age'=> @age,
    'name'=> @name,
    'id'=> @id
    }.to_json(*arg)
  end
  private

  def of_age?
    @age >= 18
  end
end
