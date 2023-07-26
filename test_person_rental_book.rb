# Test associations between person, rental and book. Sample code and output below:
# plese note: This will be removed in the final version of the project as it defined to check ...
# correct implementation of the associations bewteen person, rental and book.
require './person'
require './student'
require './classroom'
require './rental'
require './book'

# New student objects created
student2 = Student.new('English', 18, 'Jane')
student3 = Student.new('Mathematics', 20, 'Michael')

# New book objects created
book1 = Book.new('The Lord of the Rings', 'J. R. R. Tolkien')
book2 = Book.new('The Hobbit', 'J. K Rowling')

# New rental objects created
Rental.new(book1, student2, '2021-01-01')
Rental.new(book1, student2, '2021-02-02')

puts student2.rentals.count
# Output => 2
puts(student2.rentals.map(&:date))
# Output => [2021-01-01, 2021-02-02]
puts(book1.rentals.map { |rental| rental.person.name })
# Output => [Jane, Jane]

# New rental objects created
Rental.new(book2, student3, '2021-03-03')
Rental.new(book1, student3, '2021-04-04')

puts student3.rentals.count
# Output => 2
student3.rentals.map { |rental| puts rental.date }
# Output => [2021-03-03, 2021-04-04]
puts book2.rentals.count
# Output => 1
puts(book2.rentals.map { |rental| rental.person.name })
# Output => Michael
puts book1.rentals.count
# Output => 3
puts(book1.rentals.map { |rental| rental.person.name })
# Output => [Jane, Jane, Michael]
