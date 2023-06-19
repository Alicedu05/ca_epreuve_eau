#Prochain nombre premier
#Créez un programme qui affiche le premier nombre premier, supérieur au nombre donné en argument.
#Exemples d’utilisation :
#$> python exo.py 14
#17
#$>
#Afficher -1 si le paramètre est négatif ou mauvais.

#FONCTION
def verifier_arg(arg)
	if arg.match(/[a-zA-Z]/) || arg.to_i < 0 || arg.empty?
		return false
	end
	return arg
end

def verifier_premier(num)
	if num == 0 || num == 1
		puts 2
		exit
	end	
	chiffre = num + 1
	est_premier = true
	racine_chiffre = (chiffre)**(1.0/2)
	(2..racine_chiffre).each do |i|
		if chiffre % i == 0
			est_premier = false
			break
		end
	end	
	if est_premier == true
        return chiffre
	else 
		return verifier_premier(chiffre)
    end
end

#GESTION D'ERREUR
abort("-1") if ARGV.size != 1
abort("-1") if verifier_arg(ARGV[0]) == false


#PARSING
input = ARGV[0]

#RESOLUTION
verifier_arg(input)
premier_supperieur = verifier_premier(input.to_f)

#AFFICHAGE
puts premier_supperieur.to_i
