def translate(input)
    array = input.split(' ')
    latin = []
    array.each do |word|
        if word[0] == ('a' || 'e' || 'i' || 'o' || 'u')
            word+='ay'
        else
            list = word.split('')
            start = []
            finish = 'ay'

            list.each do |c|
                if (c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u')
                    break
                elsif (c == 'q') && (list[list.index(c)+1] == 'u')
                    start.push('qu')
                    list[list.index(c)+1] = ''
                    list[list.index(c)] = ''
                else
                    start.push(c)
                    list[list.index(c)] = ''
                end
            end
            word = list.join('') + start.join('') + 'ay'
        end
        latin.push(word)
    end
    latin.join(' ')
end
