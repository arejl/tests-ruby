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
    
end

