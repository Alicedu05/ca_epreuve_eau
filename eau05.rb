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

def lister_identique(chaine_entiere,sous_chaine_entiere)
    new_string = ""
    chaine = chaine_entiere.chars
    sous_chaine = sous_chaine_entiere.chars

    sous_chaine.each do |i|
        chaine.each do |j|
            if j == i 
                new_string << j # j o u r
                break
            end
        end
    end
    return new_string
end

def comparer(string1,string2)
    if string1.size == string2.size
        return true
    else
        return false
    end
end

#GESTION D'ERREUR
abort("error") if ARGV.size !=2
abort("error") if ARGV.empty?

#PARSING
chaine = ARGV[0]
sous_chaine = ARGV[1]

#RESOLUTION
liste = lister_identique(chaine,sous_chaine)
resultat = comparer(sous_chaine,liste)

#AFFICHAGE
puts resultat