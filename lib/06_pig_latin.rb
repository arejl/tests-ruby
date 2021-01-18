def translate(sentence)
  #On divise la phrase en mots stockés dans un array
  words = sentence.split(" ")
  #Pour chaque mot, on va regarder lettre par lettre s'il s'agit d'une voyelle.
  #Quand le programme trouve une voyelle, il envoie tout ce qu'il y avait avant à la fin du mot, et il rajoute "ay".
  #Les lignes 13-15 traitent le cas particulier du "qu" qui doit être compté comme une seule lettre : dans ce cas, le "u" est aussi envoyé à la fin du mot, même si c'est une voyelle.
  words.each do |word|
    if %w(a e i o u).include?(word[0])
      word << "ay"
    else
      i = 0
      until %w(a e i o u).include?(word[i]) do i += 1 end
      if word[i] == "u" && word[i - 1] == "q"
        word << word[0..i] + "ay"
        word[0..i] = ""
      else
        word << word[0...i] + "ay"
        word[0...i] = ""
      end
    end
  end
  return words.join(" ")
end
