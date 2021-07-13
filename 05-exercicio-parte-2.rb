minutos_em_um_ano=525600
print "qual o seu nome:"
nome = gets.chomp
print "qual a sua idade:"
idade= gets.to_f
def converter_anos_em_minutos(anos, minutos_em_um_ano)
    return anos*minutos_em_um_ano
end
def calc_batimentos(idade, minutos_em_um_ano)
    return converter_anos_em_minutos(idade, minutos_em_um_ano)*80
end 
print " o coração do "+nome+" bateu aproximadamente "+calc_batimentos(idade, minutos_em_um_ano).to_s+" vezes durante a sua vida"