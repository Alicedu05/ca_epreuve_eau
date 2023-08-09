#Index wanted

#Créez un programme qui affiche le premier index d’un élément recherché dans un tableau. Le tableau est constitué de tous les arguments sauf le dernier. L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.
#Exemples d’utilisation :
#$> python exo.py Ceci est le monde qui contient Charlie un homme sympa Charlie
#6
#$> python exo.py test test test
#0
#$> python exo.py test boom
#-1
#Afficher error et quitter le programme en cas de problèmes d’arguments.



#FONCTION
def comparer(liste,model)
    liste.each.with_index do |chaine,index|   # "Ceci"
        i = 0
        j = 0

        while i < chaine.size
            if chaine[i] == model[j]
                j += 1
                return index if j == model.size
            else
                j = 0
            end
            i += 1
        end
     
    end
    return -1
end

#GESTION D'ERREUR
abort("error") if ARGV.empty?
abort("error") if ARGV.size == 1

#PARSING
liste_arguments = ARGV[0..-2]
model_argument = ARGV[-1]

#RESOLUTION
resultat = comparer(liste_arguments,model_argument)

#AFFICHAGE
puts resultat
