require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './list_elements_class'
require './create_elements_class'
require 'json'
require './save_data'

class App
  include SaveData
# attr_accessor :books

  def initialize
    @books = []
    @people = []
    @rentals = []
    @list_elements = ListElementsClass.new
    @create_elements = CreateElementsClass.new
    # Instantiate CreateElementsClass
  end

  ## LIST THE BOOKS

  def list_books
    @list_elements.list_books(@books) # Call the method from ListElementsClass passing @books as an argument
  end

  ## LIST PEOPLE
  def list_people
    @list_elements.list_people(@people) # Call the method from ListElementsClass passing @people as an argument
  end

  ## CREATE A STUDENT

  def create_student
    @create_elements.create_student(@people)
  end

  ## CREATE A TEACHER
  def create_teacher
    @create_elements.create_teacher(@people)
  end

  ## CREATE A PERSON
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)?'
    input_result = gets.chomp.to_i

    case input_result
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  ## CREATE A BOOK
  def create_book
    @create_elements.create_book(@books)
    
  end

  ## CREATE A RENTAL
  def create_rental
    @create_elements.create_rental(@books, @people, @rentals)
  end

  ## LIST RENTALS BY PERSON

  def list_rentals_by_person_id
    @list_elements.list_rentals_by_person_id(@people, @rentals)
  end
end
