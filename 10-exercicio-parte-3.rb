
puts"qual o tamanho da base da piramide?"
base=gets.chomp.to_i
aux=0
espacos=0
if(base%2==0)
    # topo ="**"
    aux=2
    espacos=base/2-1
else
    # topo ="*"
    aux=1
    espacos=base/2
end


while aux<=base
    puts (" "*espacos)+"*"*aux
    aux+=2
    espacos=espacos-1
end








# 3) Desenhar uma pirâmide. O tamanho da base deve ser informado. 
# Se o tamanho da base for numero par, o topo terá "**", se for ímpar "*". Então, cada nível é preenchido até que o nível da base tenha o mesmo número de "*" que o número informado.
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