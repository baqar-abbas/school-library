# create_elements_class.rb
require './book'
require './person'
require './rental'
require './student'
require './teacher'

class CreateElementsClass

    ## CREATE A STUDENT
  def create_student
    print 'Student name: '
    name = gets.chomp
    print 'Student age: '
    age = gets.chomp
    print 'Has parent permission? (Y/N) '
    permission = gets.chomp.downcase
    parent_permission = permission == 'y'
    student = Person.new(age, name: name, parent_permission: parent_permission)
    puts 'Student created successfully'
    student
  end

  ## CREATE A TEACHER
  def create_teacher
    print 'Specialization: '
    specialization = gets.chomp
    print 'Teacher name: '
    name = gets.chomp
    print 'Teacher age: '
    age = gets.chomp
    teacher = Teacher.new(age, specialization, name: name)
    puts 'Teacher created successfully'
    teacher
  end

  # Create a person
  def create_person
    puts 'Do you want to  create a student (1) or a teacher(2)?'
    input_result = gets.chomp.to_i

    case input_result
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  # Create a book
  def create_book
    print 'Book title: '
    title = gets.chomp
    print 'Book author: '
    author = gets.chomp
    book = Book.new(title, author)
    puts 'Book created successfully'
    book
  end
  
    # Create a rental
  def create_rental(books, people)
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, Age: #{person.age}", "id: #{person.id}"
    end
    person_index = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    rental = Rental.new(books[book_index], people[person_index], date)
    puts 'Rental created successfully'
    rental
  end
end
