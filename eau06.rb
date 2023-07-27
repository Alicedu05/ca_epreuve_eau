 #Majuscule sur deux

#Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères. Seule les lettres (A-Z, a-z) sont prises en compte.
#Exemples d’utilisation :
#$> python exo.py “Hello world !”
#HeLlO wOrLd !
#$> python exo.py 42
#error
#Afficher error et quitter le programme en cas de problèmes d’arguments.


#FONCTION
def transformer(string)
new_string = []
cpt = 0

    string.each_char do |caractere|

        if caractere =~ /[a-zA-Z]/
            if cpt % 2 == 0
                new_string << string[caractere].upcase
                cpt += 1

            else
                new_string << string[caractere]
                cpt += 1

            end
        else
            new_string << string[caractere]
        end

    end
    return new_string.join.strip
end

#GESTION D'ERREUR
abort("error") if ARGV.size != 1
abort("error") if ARGV.empty?

#PARSING
phrase = ARGV[0]

#RESOLUTION
string_modifier = transformer(phrase)


#AFFICHAGE
print string_modifier
