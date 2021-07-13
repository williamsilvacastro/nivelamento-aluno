#FUNCOES
def converter_anos_em_minutos(anos, minutos_em_um_ano)
    return anos*minutos_em_um_ano
end
def calc_batimentos(idade, minutos_em_um_ano)
    return converter_anos_em_minutos(idade, minutos_em_um_ano)*80
end 
#MAIN
minutos_em_um_ano=525600
print "qual o seu nome:"
nome = gets.chomp
print "qual a sua idade:"
idade= gets.to_f
print "o coração do "+nome+" bateu aproximadamente "+calc_batimentos(idade, minutos_em_um_ano).to_s+" vezes durante a sua vida"

# Parte 2:
# Escreva um programa que pergunte o nome e a idade do usuário. Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário viveu. Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do usuário como parâmetro.
# Para cada parte, escreva códigos que testem os programas escritos.