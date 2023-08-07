module LoadData
    def load_data
        load_book
    end
    def load_book
        file = File.read('book.json')
        data = JSON.parse(file)
        data.map do |book|
            # @books << Book.new(book['title'],book['author'])
            @books << Book.from_json(book)
        end
    end
    
end