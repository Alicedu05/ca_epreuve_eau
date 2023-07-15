#String dans string

#Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.
#Exemples d’utilisation :
#$> python exo.py bonjour jour
#true
#$> python exo.py bonjour joure
#false
#$> python exo.py 42
#error
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION

def trouve_chaine(chaine, sous_chaine)
    i = 0
    j = 0
  
    while i < chaine.size
        if chaine[i] == sous_chaine[j]
            j += 1
            return true if j == sous_chaine.length
        else
            j = 0
        end
  
      i += 1
    end
  
    return false
  end

#GESTION D'ERREUR
abort("error") if ARGV.size !=2
abort("error") if ARGV.empty?

#PARSING
chaine = ARGV[0]
sous_chaine = ARGV[1]

#RESOLUTION
resultat = trouve_chaine(chaine,sous_chaine)

#AFFICHAGE
puts resultat
