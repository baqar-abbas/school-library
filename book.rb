class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def book_data_to_json(*arg)
    {
'title'=> @title,
    'author'=> @author
    }.to_json(*arg)
    
  end

  def rentals
    @rentals.dup.freeze
  end
end

