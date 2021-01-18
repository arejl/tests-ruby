def translate(sentence)
    words=sentence.split(" ")
    words.each do |word|
        if %w(a e i o u).include?(word[0])
            word<<'ay'
        else
            i=0
            until %w(a e i o u).include?(word[i]) do i+=1 end
                if word[i]=="u" && word[i-1]=="q"
                    word<<word[0..i]+'ay'
                    word[0..i]=''
                else
                    word<<word[0...i]+'ay'
                    word[0...i]=''
                end
        end
    end
    return words.join(" ")
end