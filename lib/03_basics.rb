def who_is_bigger(a,b,c)
    if [a,b,c].include?(nil)
        return "nil detected"
    else
        case [a,b,c].max
        when a
            return "a is bigger"
        when b
            return "b is bigger"
        else
            return "c is bigger"
        end
    end
end

def reverse_upcase_noLTA(string)
    return string.reverse.upcase.delete('LTA')
end

def array_42(arr)
    return arr.include?(42)
end

def magic_array(arr)
    return arr.flatten.sort.map!{|n|n*2}.delete_if{|i|i%3==0}.uniq
end