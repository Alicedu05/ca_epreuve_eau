#Combinaisons de 3 chiffres

#Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant, dans l’ordre croissant. La répétition est volontaire.
#Exemples d’utilisation :
#$> python exo.py
#012, 013, 014, 015, 016, 017, 018, 019, 023, 024, ... , 789
#$>
#987 n’est pas là parce que 789 est présent.
#020 n’est pas là parce que 0 apparaît deux fois.
#021 n’est pas là parce que 012 est présent.
#000 n’est pas là parce que cette combinaison ne comporte pas exclusivement des chiffres différents les uns des autres.

# FONCTION
def cree_liste_de_chiffre()
    range = (0..999) # crée une plage de nombres de 0 à 999
    liste_de_nombres = [] # crée une liste vide pour stocker les nombres formatés
    range.each do |n| # pour chaque élément n de la plage
    chiffre = sprintf("%03d", n) # formate n sur 3 digits
    liste_de_nombres << chiffre # ajoute chaque chiffre formatée à la liste
    end
    return liste_de_nombres # retourne la liste de chaînes formatées
end

def verif_chiffres_supérieurs_liste(liste_nombres)
  liste_nombres.select do |nombre| #selectione tour à tour tous les éléments de la liste
    chiffres = nombre.to_s.chars.map(&:to_i) #transforme chaque selection en string puis en les separe en caracters puis transforme chaque char en integer
    chiffres.each_cons(2).all? { |a, b| b > a } # créé une paire pour chaque caractére et verifie qu'ils sont croissants, si non supprime le nombre de la liste
  end
end

def formater_liste(liste_trié) #pour que la liste s'affiche au format demandé
	liste = liste_trié.join(", ")
end

# GESTION ERREUR

# PARSING
liste_de_nombres = cree_liste_de_chiffre()
chiffres_croissants = verif_chiffres_supérieurs_liste(liste_de_nombres)
liste_trié = verif_chiffres_supérieurs_liste(chiffres_croissants)
liste = formater_liste(liste_trié)

# RESOLUTION
cree_liste_de_chiffre()
verif_chiffres_supérieurs_liste(chiffres_croissants)

# AFFICHAGE RESULTAT
puts liste