# 1) Faça um programa para calcular a boa e velha tabuada.
# Pergunte ao usuário qual o número que ele quer o cálculo da taboada e imprima na tela os resultados.
# Por exemplo:
# Se o usuário digitar 7, deve imprimir dessa forma:
# 7 x 1 = 7
# 7 x 2 = 14
# 7 x 3 = 21
# ... até
# 7 x 10 = 70


def tabuada(numero)
    aux=1    
    while aux<=10
        resultado=numero.to_s+"x"+aux.to_s+"="+(numero*aux).to_s
        aux=aux+1
    end
    return resultado
end
puts "de qual numero voce quer a tabuada?"
numero = gets.chomp.to_i
puts tabuada(numero)

