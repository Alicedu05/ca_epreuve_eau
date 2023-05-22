#Paramètres à l’envers

#Créez un programme qui affiche ses arguments reçus à l’envers.
#Exemples d’utilisation :
#$> python exo.py “Suis” “Je” “Drôle”
#Drôle
#Je
#Suis
#$> python exo.py ha ho
#ho
#ha
#$> python exo.py “Bonjour 36”
#Bonjour 36
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION

def verifie_arguments(arg)
    if ARGV.empty?
    	erreur(true)
	end
  return false
end

def invertion(tableau)
	envers = []
	taille = tableau.size
	(taille -1).downto(0) do |i|
	envers << tableau[i]
	end
	return envers
end

#GESTION D'ERREUR
def erreur(bool)
    puts "erreur."
    abort
end

#PARSING
arguments = ARGV[0..-1]

#RESOLUTION
arguments_envers = invertion(arguments)


#AFFICHAGE
if verifie_arguments(arguments) == false
	puts arguments_envers
end

