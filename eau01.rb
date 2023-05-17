#Combinaisons de 2 nombres

#Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 00 et 99 dans l’ordre croissant.
#Exemples d’utilisation :
#$> python exo.py
#00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99
#$>

#FONCTION
#GESTION D'ERREUR
#PARSING
#RESOLUTION
#AFFICHAGE

# FONCTION
def cree_liste_de_chiffre()
    range = (0..9999) # crée une plage de nombres de 0 à 9999
    liste_de_nombres = [] # crée une liste vide pour stocker les nombres formatés
    range.each do |n| # pour chaque élément n de la plage
    chiffre = sprintf("%04d", n) # formate n sur 4 digits
    liste_de_nombres << chiffre # ajoute chaque chiffre sur 4 digits à la liste
    end
    return liste_de_nombres # retourne la liste de chaînes formatées
end

def verif_chiffres_supérieurs_liste(liste_nombres)
  liste_nombres.select do |nombre| #selectione tour à tour tous les éléments de la liste
    chiffres = nombre.to_s.chars.map(&:to_i) #transforme chaque selection en string puis en les separe en caracters puis transforme chaque char en integer
     premiere_paire = chiffres[0, 2].join('').to_i# Sélectionne les deux premiers chiffres (première paire)
     deuxieme_paire = chiffres[2, 2].join('').to_i# Sélectionne les deux chiffres suivants (deuxième paire)
     #p chiffres
     #p premiere_paire
     #p deuxieme_paire
     deuxieme_paire > premiere_paire # Compare les est supprime de la liste ceux qui ne sont pas bon
  end
end

def formater_liste(liste_trié) #pour que la liste s'affiche au format demandé
	liste1 = liste_trié.join(", ")
	liste = liste1.gsub(/(\d{2})(\d{2})/, '\1 \2')
end

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