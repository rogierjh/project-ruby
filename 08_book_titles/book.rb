class Book
    attr_accessor :title

    def title
        string = []
        exceptions = ['and', 'the', 'a', 'an', 'in', 'of']
        @title.split(' ').each do |word|
            if exceptions.include? word
                string.push(word)
            else
                string.push(word.capitalize)
            end
        end
        string[0].capitalize!
        string.join(' ')
    end
end
