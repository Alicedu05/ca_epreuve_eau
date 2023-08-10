#Différence minimum absolue

#Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué uniquement de nombres. Nombres négatifs acceptés.
#Exemples d’utilisation :
#$> python exo.py 5 1 19 21
#2
#$> python exo.py 20 5 1 19 21
#1
#$> python exo.py -8 -6 4
#2
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def comparer(nombres)
    resultat = nombres.max

    nombres.each do |chiffre|
        nombres.each do |autre_chiffre|
    
            if chiffre == autre_chiffre
                next
            else
                ecart = (autre_chiffre - chiffre).abs
                if ecart == 0
                    next
                elsif ecart < resultat
                    resultat = ecart
                end
            end
       end
    end
    return resultat
end

#GESTION D'ERREUR
abort("error") if ARGV.empty?
abort("error") if ARGV =~ /[a-zA-Z]/
abort("error") if ARGV.size == 1

#PARSING
liste = ARGV.map(&:to_i)

#RESOLUTION
le_plus_petit = comparer(liste)

#AFFICHAGE
puts le_plus_petit