def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, *n)
  #Puisque n est optionnel, il est stocké sous forme d'array, donc il faut le remettre en integer avec join.to_i
  n.empty? ? n = 2 : n = n.join.to_i
  return ([string] * n).join(" ")
end

def start_of_word(string, n)
  return string[0..n - 1]
end

def first_word(string)
  return string.split(" ").first
end

def titleize(string)
  #On définit une liste de "petits" mots à mettre en minuscule s'ils ne sont pas le premier mot (= si leur index > 0)
  little_words = ["and", "the"]
  #On divise la phrase en un array de mots, auxquels on ajoute un index, puis on regarde si chaque mot est dans les "petits mots" + à quelle place il est dans la phrase.
  return string.split(" ").each_with_index.map { |word, index| little_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end
