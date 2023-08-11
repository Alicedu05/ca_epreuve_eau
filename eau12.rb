#Tri à bulle

#Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.
#Vous utiliserez une fonction de cette forme (selon votre langage) :
#my_bubble_sort(array) {
	# votre algorithme
#	return (new_array)
#}
#Exemples d’utilisation :
#$> python exo.py 6 5 4 3 2 1
#1 2 3 4 5 6
#$> python exo.py test test test
#error
#Afficher error et quitter le programme en cas de problèmes d’arguments.
#Wikipedia vous présentera une belle description de cet algorithme de tri.

#FONCTION
def trier(tableau)
	for i in (tableau.size - 1).downto(0) # i passe du dernier index au premier (0) il est le pivot dans la boucle externe
        tableau_trie = true 

        for j in 0..i-1 do # 
            if tableau[j+1] < tableau[j]
                temp = tableau[j]
                tableau[j] = tableau[j+1]
                tableau[j+1] = temp

                tableau_trie = false
            end
        end
        break if tableau_trie
    end
    return tableau
end

#GESTION D'ERREUR
abort("error") if ARGV.any? { |arg| arg =~ /[a-zA-Z]/ }
abort("error") if ARGV.empty?
abort("error") if ARGV.size == 1

#PARSING
liste = ARGV.map(&:to_i)

#RESOLUTION
liste_trie = trier(liste)

#AFFICHAGE
print liste_trie.join(' ')