#Majuscule

#Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. Les autres lettres devront être en minuscules. Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.
#Exemples d’utilisation :
#$> python exo.py “bonjour mathilde, comment vas-tu ?!”
#Bonjour Mathilde, Comment Vas-tu ?!
#$> python exo.py 42
#error
#Afficher error et quitter le programme en cas de problèmes d’arguments.


#FONCTION
def transformer(string)
    new_string = string.map do |word| # itere sur chaque element de la phrase avec une variable qui prend la valeur de chaque mot
         nouveau_mot = word.dup  # Crée une copie de chaque mot dans la variable nouveau_mot
         nouveau_mot[0] = nouveau_mot[0].upcase  # Met en majuscule la première lettre du mot copié
         nouveau_mot  # Renvoie le mot copié et modifié à la fin de chaque itération
      end
      
      return new_string.join(" ")  # Affiche le tableau de mots modifiés 
end

#GESTION D'ERREUR
abort("error") if ARGV.empty?
abort("error") if ARGV.join !~ /[a-zA-Z]/ # concatene tous les mot de la chaine pour verifier si il n'y à que des lettres passées en arguments 


#PARSING
phrase = ARGV.join(" ").split(" ") # Divisez la chaîne en mots individuels

#RESOLUTION
string_modifier = transformer(phrase)

#AFFICHAGE
puts string_modifier