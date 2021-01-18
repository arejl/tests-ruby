def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string,*n)
    n.empty? ? n=2 : n=n.join.to_i
    return ([string]*n).join(" ")
end

def start_of_word(string,n)
    return string[0..n-1]
end

def first_word(string)
    return string.split(' ').first
end

def titleize(string)
    little_words=["and", "the"]
    return string.split(' ').each_with_index.map{|word, index| little_words.include?(word) && index > 0 ? word : word.capitalize }.join(' ')
end