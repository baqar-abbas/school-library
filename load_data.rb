module LoadData
    def load_data
        load_book
    end
    def load_book

        file = File.read('book.json')
        if file.empty?
            puts "There is no data in json file"
        else     
        # file.empty? ? puts "There is no data in json file" :  
        # puts "There is no data in json file" if file.empty?
        data = JSON.parse(file)
        data.map do |book|
            # @books << Book.new(book['title'],book['author'])
            @books << Book.from_json(book)
        end
    end
    end
    
end