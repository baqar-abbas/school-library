# create_elements_class.rb
require './book'
require './person'
require './rental'
require './student'
require './teacher'

class CreateElementsClass
  ## CREATE A STUDENT
  def create_student(people)
    print 'Student name: '
    name = gets.chomp
    print 'Student age: '
    age = gets.chomp
    print 'Has parent permission? (Y/N) '
    permission = gets.chomp.downcase
    parent_permission = permission == 'y'
    student = Person.new(age, name: name, parent_permission: parent_permission)
    people.push(student)
    puts 'Student created successfully'
    puts ''
  end

  ## CREATE A TEACHER
  def create_teacher(people)
    print 'Specialization: '
    specialization = gets.chomp
    print 'Teacher name: '
    name = gets.chomp
    print 'Teacher age: '
    age = gets.chomp
    people << Teacher.new(age, specialization, name: name)
    puts 'Teacher created successfully'
    puts ''
  end

  # Create a book
  def create_book(books)
    print 'Book title: '
    title = gets.chomp
    print 'Book author: '
    author = gets.chomp
    book = Book.new(title, author)
    books.push(book)
    puts 'Book created successfully'
    puts ''
  end

  # Create a rental
  def create_rental(books, people, rentals)
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
    rentals << Rental.new(books[book_index], people[person_index], date)
    puts 'Rental created successfully'
    puts ''
  end
end
