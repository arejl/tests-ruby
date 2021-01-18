def time_string(t)
  h = t / 3600 #On regarde le nombre d'heures contenues dans le nombre de secondes données (1h=3600s=60*60)
  m = t / 60 % 60 #On regarde combien de minutes il y a dans le temps donné avec t/60, et on en retire les heures en faisant %60, qui nous donne le nombre de minutes non contenues dans une heure.
  s = t % 60 #On regarde le nombre de secondes qui ne rentrent ni dans une heure, ni dans une minute (%60=reste de la division par 60)
  return [h, m, s].map { |i| i.to_s.rjust(2, "0") }.join(":")
end
