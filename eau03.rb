#Suite de Fibonacci

#Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci. (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.
#Exemples d’utilisation :
#$> python exo.py 3
#2
#$>
#Afficher -1 si le paramètre est négatif ou mauvais.

#FONCTION
def créé_suite_fibonacci(entier)
	suite = [0,1]
	if entier <= 1 && entier >= 0
		puts entier
		exit
	else
		 (2..entier).each do |i|
		suite[i] = suite[i - 1] + suite[i - 2]
		end
	end
		return suite[entier]
end

#GESTION D'ERREUR
def verifier_arg(arr)
	if arr.to_i == nil || arr.to_i < 0
		return true
	elsif ARGV.size >= 2
    	return true
	elsif arr.match(/[a-zA-Z]/)
    	return true
	else
		return false
	end
end

if verifier_arg(ARGV[0]) == true
	puts -1
	exit
end

#PARSING
chiffre = ARGV[0]

#RESOLUTION
index_chiffre = créé_suite_fibonacci(chiffre.to_i)

#AFFICHAGE
puts index_chiffre

