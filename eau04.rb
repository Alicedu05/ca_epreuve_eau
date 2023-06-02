#Prochain nombre premier
#Créez un programme qui affiche le premier nombre premier, supérieur au nombre donné en argument.
#Exemples d’utilisation :
#$> python exo.py 14
#17
#$>
#Afficher -1 si le paramètre est négatif ou mauvais.

#FONCTION
def verifier_arg(arg)
	if arg.match(/[a-zA-Z]/)
		return false
		exit
	end
	return arg
end

def cree_liste(int) # amelioration (int..int*2).to_a
	liste = []
	fin_liste = int + int
	range = (int + 1)..fin_liste
	liste = range.to_a
	return liste
end

def verifier_premier(liste)
	est_premier = false
	liste.each do |i|
		p i
	 while est_premier == false do
	 	racine_chiffre = i**(1.0/2)
	 	 (2..i).each do |j|
	 	 	p j
        if j % i == 0
            est_premier = false
            break
        end
    end
    if est_premier == true
        puts "Oui,  est un nombre premier."
    else
        puts "Non, n’est pas un nombre premier."
        break
    end
	 	end
    end
   return est_premier #booleen
end

#GESTION D'ERREUR
puts -1 if ARGV.size != 1
puts -1 unless verifier_arg(ARGV[0])
#puts -1 if verifier_premier(liste) = false

#PARSING
input = ARGV[0]

#RESOLUTION
verifier_arg(input)
liste_nombre = cree_liste(input.to_i)
premier_supperieur = verifier_premier(liste_nombre)

#AFFICHAGE
puts premier_supperieur
