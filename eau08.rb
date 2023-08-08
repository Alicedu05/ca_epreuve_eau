#Chiffres only

#Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.
#Exemples d’utilisation :
#$> python exo.py “4445353”
#true
#$> python exo.py 42
#true
#$> python exo.py “Bonjour 36”
#false
#Afficher error et quitter le programme en cas de problèmes d’arguments.


#FONCTION
def tester_argument(caracteres)
    verifier = true

    caracteres.each do |chiffre|
        if chiffre.match?(/^\d+$/) #verifi si la variable est un chiffre
            verifier = true
        else
            verifier = false
            break
        end
    end

    return verifier
end

#GESTION D'ERREUR
abort("error") if ARGV.empty?
abort("error") if ARGV =~ /[a-zA-Z]/

#PARSING
a_verifier = ARGV
#a_verifier.map!(&:to_s)

#RESOLUTION
resultat = tester_argument(a_verifier)

#AFFICHAGE
puts resultat