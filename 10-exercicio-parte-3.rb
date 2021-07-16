
puts"qual o tamanho da base da piramide?"
base=gets.chomp.to_i
aux=0
espacos=0
if(base%2==0)
    espacos=(base/2)-1
end

for x in (1..base)
    aux=aux+1
    for y in (1..aux)
        for z in (1..espacos)
            print " "
        end
        espacos=espacos-1
        print"*"
    end
    puts
end



piramide=""








# 3) Desenhar uma pirâmide. O tamanho da base deve ser informado. Se o tamanho da base for numero par, o topo terá "**", se for ímpar "*". Então, cada nível é preenchido até que o nível da base tenha o mesmo número de "*" que o número informado.
#     **
#    ****
#   ******
#  ********
# **********
#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************
# Enviar como 10-exercicio-parte-3.rb