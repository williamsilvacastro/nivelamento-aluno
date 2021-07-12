def converter_anos_em_horas(anos)
    return anos*8760
end
def converter_decadas_em_minutos(decadas)
    return decadas*5256000
end
def converter_anos_em_segundos(anos)
    return anos*31536000
end
def converter_segundos_em_anos(segundos)
    return segundos/31536000
end
puts "um ano tem "+ converter_anos_em_horas(1).to_s+" horas"
puts "uma decada tem "+converter_decadas_em_segundos(1).to_s+" minutos"
puts "eu tenho "+ converter_anos_em_segundos(20).to_s+" segundos de vida"
puts "se a sua idade é 1232 milhoes de segundos, voce tem "+converter_segundos_em_anos(1232000000).to_s+" anos de vida"