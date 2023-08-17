#Par ordre Ascii

#Créez un programme qui trie les éléments donnés en argument par ordre ASCII.
#Exemples d’utilisation :
#$> python exo.py Alfred Momo Gilbert
#Alfred Gilbert Momo
#$> python exo.py A Z E R T Y
#A E R T Y Z
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
# crer une liste de liste de paire lettre/code ascii
def trouver_code_acsii(liste)
    code_ascii = []
  
    liste.each do |word|
      nouveau_mot = [] # vide la variable a chaque nouvelle boucle
  
      word.chars.each do |lettre|
        paire = [lettre, lettre.ord]
        nouveau_mot << paire
      end
  
      code_ascii << nouveau_mot
    end
  
    return code_ascii # liste de liste de paire lettre/code ascii
  end

# trier les lettres par code ascii a l'aide du tri à bulle
def trie_a_bulle(tableau)
    for pivot in (tableau.size - 1).downto(0) # pivot dans la boucle externe
        tableau_trie = true 

        for j in 0..pivot-1 do # boucle interne qui permet de verifier les éléments entre eux et les inverser si bes et reduit de 1 depuis la fin tableau
          
              if tableau[j+1][0][1] < tableau[j][0][1] # verifi le code acsii de chaque paire d'éléments au besoin les echange de place
                  temp = tableau[j]
                  tableau[j] = tableau[j+1]
                  tableau[j+1] = temp

                  tableau_trie = false
              end

        end
        break if tableau_trie

    end
    return tableau
end

# nettoie le resultat pour que la liste 
def nettoyer_paire(liste_trie_de_paire)
    mots = liste_trie_de_paire.map do |sous_liste|
        lettres = sous_liste.map { |paire| paire[0] }
        lettres.join('')
    end
end

#GESTION D'ERREUR
abort("error") if ARGV.any? { |arg| arg !~ /[a-zA-Z]/ }
abort("error") if ARGV.empty?
abort("error") if ARGV.size == 1

#PARSING
liste_a_convertir = ARGV

#RESOLUTION
liste_lettre_code_ascii = trouver_code_acsii(liste_a_convertir)
liste_ordre_ascii = trie_a_bulle(liste_lettre_code_ascii)
resultat = nettoyer_paire(liste_ordre_ascii)

#AFFICHAGE
print resultat.join(' ')
