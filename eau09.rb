#Entre min et max

#Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.
#Exemples d’utilisation :
#$> python exo.py 20 25
#20 21 22 23 24
#$> python exo.py 25 20
#20 21 22 23 24
#$> python exo.py hello
#error
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION

def de_min_a_max(first,second)
    liste = []
    if first < second

        for i in first...second
            liste << i
        end
    else
        for i in second...first
            liste << i
        end
    end
    return liste
end

#GESTION D'ERREUR
abort("error") if ARGV.empty?
abort("error") if ARGV =~ /[a-zA-Z]/
abort("error") if ARGV.size != 2

#PARSING
first_number = ARGV[0]
second_number = ARGV[1]

#RESOLUTION
suite = de_min_a_max(first_number,second_number)

#AFFICHAGE
print suite.join(" ")