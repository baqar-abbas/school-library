module SaveData
    def save_data
        save_book
        save_person
    end
    def save_book
        File.open('book.json','w') do |file|
        #   json_data= JSON.pretty_generate(@book.map(&:book_data_to_json))
            json_data = JSON.pretty_generate(@books.map { |book| book.book_data_to_json })
            file.write(json_data)
        end
    end

    def save_person
        File.open('student.json','w') do |file|
        #   json_data= JSON.pretty_generate(@book.map(&:book_data_to_json))
            json_data = JSON.pretty_generate(@people.map { |student| student.student_data_to_json })
            puts json_data
            file.write(json_data)
        end
    end
    
end