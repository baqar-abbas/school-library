require './rental'

class ListElementsClass
  def list_books(books)
    books.each do |book|
      puts "Title: #{book.title}", "Author: #{book.author}"
    end
    puts ''
  end

  def list_people(people)
    people.each do |person|
      puts "Name: #{person.name}", "age: #{person.age}", "id: #{person.id}"
    end
    puts ''
  end

  def list_rentals_by_person_id(people, rentals)
    puts 'write person id: '
    person_id = gets.chomp.to_i
    person = people.find { |prson| prson.id == person_id }
    rentals = rentals.select { |rental| rental.person == person }
    rentals.each do |rental|
      puts "Book: #{rental.book.title}, Book: #{rental.book.author} Date: #{rental.date}"
    end
    puts ''
  end
end
