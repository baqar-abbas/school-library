module SaveData
    def save_data
        save_book()
    end
    def save_book
        File.open('book.json','w') do |file|
        #    json_data= JSON.pretty_generate(@book.map(&:book_data_to_json))
           json_data = JSON.pretty_generate(@books.map { |book| book.book_data_to_json })
            file.puts(json_data)
        end
    end
    
end