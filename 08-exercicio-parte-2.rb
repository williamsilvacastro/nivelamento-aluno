# 2) Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.
# Como o próprio nome diz, o MMC é o menor número inteiro que é múltiplo comum de outros números.
# Perguntar ao usuários os dois números inteiros que ele quer saber o MMC.
# Ex.:
# MMC 2, 3 = 6
# MMC 2, 10 = 10
# MMC 5, 8 = 40
def MMC(numero_1,numero_2)
    aux=1
    until (aux%numero_1==0 && aux%numero_2==0)           
        aux+=1
    end
    return aux
end
puts"CALCULO DE MMC"
puts "digite o primeiro numero"
numero_1=gets.chomp.to_i
puts "digite o segundo numero"
numero_2=gets.chomp.to_i
puts "MMC "+numero_1.to_s+", "+numero_2.to_s+" = "+MMC(numero_1, numero_2).to_s


