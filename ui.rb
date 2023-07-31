class UI
    def initialize(app)
      @app = app
    end
  
    def main_loop
      loop do
        display_menu
        choose_option
      end
    end
  
    private
  
    def display_menu
      puts 'Welcome to School Library App'
      puts ''
      puts 'Select an option by entering a number:'
      puts '1. list all books'
      puts '2. list all people'
      puts '3. create a person'
      puts '4. create a book'
      puts '5. create a rental'
      puts '6. List rentals by person id'
      puts '7. Exit'
    end
  
    def choose_option
      options = {
        '1' => :list_books,
        '2' => :list_people,
        '3' => :create_person,
        '4' => :create_book,
        '5' => :create_rental,
        '6' => :list_rentals_by_person_id,
        '7' => :exit_app
      }
      user_choice = gets.chomp
      if options.key?(user_choice)
        @app.send(options[user_choice])
      else
        puts 'Invalid option, please try again'
      end
    end
  
  end
  