horasEmUmAno=8760
minutosEmUmaDecada=5256000
segundosEmUmAno=31536000

def converter_anos_em_horas(anos, horasEmUmAno)
    return anos*horasEmUmAno
end
def converter_decadas_em_minutos(decadas, minutosEmUmaDecada)
    return decadas*minutosEmUmaDecada
end
def converter_anos_em_segundos(anos, segundosEmUmAno)
    return anos*segundosEmUmAno
end
def converter_segundos_em_anos(segundos, segundosEmUmAno)
    return segundos/segundosEmUmAno
end
puts "um ano tem "+ converter_anos_em_horas(1, horasEmUmAno).to_s+" horas"
puts "uma decada tem "+converter_decadas_em_segundos(1, minutosEmUmaDecada).to_s+" minutos"
puts "eu tenho "+ converter_anos_em_segundos(20, segundosEmUmAno).to_s+" segundos de vida"
puts "se a sua idade é 1232 milhoes de segundos, voce tem "+converter_segundos_em_anos(1232000000, segundosEmUmAno).to_s+" anos de vida"