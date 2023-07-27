require './book'
require './person'
require './rental'
require './student'
require './teacher'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  ## LIST THE BOOKS
  def list_books
    @books.each do |book|
      puts "Title: #{book.title}", "Author: #{book.author}"
    end
    puts ''
  end

  ## LIST PEOPLE
  def list_people
    @people.each do |person|
      puts "Name: #{person.name}", "age: #{person.age}", "id: #{person.id}"
    end
    puts ''
  end

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
    @people.push(student)
    puts 'Student created successfully'
    puts ''
  end

  ## CREATE A TEACHER

  def create_teacher
    print 'Specialization: '
    specialization = gets.chomp
    print 'Teacher name: '
    name = gets.chomp
    print 'Teacher age: '
    age = gets.chomp
    @people << Teacher.new(age, specialization, name: name)
    puts 'Teacher created successfully'
    puts ''
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

  ## CREATE A BOOK

  def create_book
    print 'Book title: '
    title = gets.chomp
    print 'Book author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully'
    puts ''
  end

  ## CREATE A RENTAL

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, Age: #{person.age}", "id: #{person.id}"
    end
    person_index = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    @rentals << Rental.new(@books[book_index], @people[person_index], date)
    puts 'Rental created successfully'
    puts ''
  end

  ## LIST RENTALS BY PERSON

  def list_rentals_by_person_id
    puts 'write person id: '
    person_id = gets.chomp.to_i
    person = @people.find { |prson| prson.id == person_id }
    rentals = @rentals.select { |rental| rental.person == person }
    rentals.each do |rental|
      puts "Book: #{rental.book.title}, Book: #{rental.book.author} Date: #{rental.date}"
    end
    puts ''
  end
end
