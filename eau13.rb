#Tri par sélection

#Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri par sélection.
#Vous utiliserez une fonction de cette forme (selon votre langage) :
#my_select_sort(array) {
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
def my_select_sort(array)
	n = array.size

	for i in 0..n-2 # du premier à l'avent dernier du tableau (boucle exterieur)
		index_min = i # i prend la valeur de chaque élément du premier à l'avant dernier
		
			for j in i+1..n-1 # j prend la valeur de i + 1 et augmente de 1 à chaque nouvelle boucle jusqu'au dernier element du tableau

				if array[j] < array[index_min]
					index_min = j
				end
			end

			if index_min != i 
				array[i], array[index_min] = array[index_min], array[i]
			end
	end
	new_array = array
	return new_array
end

#GESTION D'ERREUR
abort("error") if ARGV.any? { |arg| arg =~ /[a-zA-Z]/ }
abort("error") if ARGV.empty?
abort("error") if ARGV.size == 1

#PARSING
liste = ARGV.map(&:to_i) # recuper les elements et transforme les en chiffre

#RESOLUTION
new_array = my_select_sort(liste)

#AFFICHAGE
print new_array.join(' ')