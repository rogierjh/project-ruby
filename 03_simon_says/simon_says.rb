def echo(input)
    input
end

def shout(input)
    input.upcase
end

def repeat(input, times = 2)
    ((input + " ")*times).strip
end

def start_of_word(input, range)
    input.split('')[0,range].join('')
end

def first_word(input)
    input.split(' ')[0]
end

def titleize(input)
    title = []
    input.split(' ').each do |word|
        if word == 'and' || word == 'the' || word == 'over'
            title.push(word)
        else
            title.push(word.capitalize)
        end
    end
    title[0].capitalize!
    title.join(' ')
end
