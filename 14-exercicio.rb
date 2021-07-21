# Exercicio 14
# Completar o código abaixo para que funcione corretamente
# def sortear_numeros(qtd, limite_inicio, limite_fim)
#     # implemente aqui!
# end
# def obter_apostas(qtd, limite_inicio, limite_fim)
#     # implemente aqui!
# end
# def verificar_acertos(sorteados, apostados)
#     # implemente aqui!
# end
# def mega_sena()
#     sorteados = sortear_numeros(6, 1, 60)
#     apostados = obter_apostas(6, 1, 60)
#     acertados = verificar_acertos(sorteados, apostados)
#     puts "Numeros sorteados: #{sorteados.to_s()}"
#     puts "Numeros apostados: #{apostados.to_s()}"
#     puts "Acertos: #{acertados.to_s()}"
# end
# mega_sena()
# Enviar como 14-exercicio.rb
def sortear_numeros(qtd, limite_inicio, limite_fim)
    # implemente aqui!
    sorteados=[]
    x=0
    while x<qtd
        aux=rand(limite_inicio..limite_fim)
        if !existe_no_array(sorteados, aux)
            sorteados[x]=aux
            x=x+1
        end
    end
    return sorteados
end
def existe_no_array(array, valor)
    aux=0
    while aux<array.size-1
        if(array[aux]==valor)
            return true
        end
        aux=aux+1
    end
    return false
end
def obter_apostas(qtd, limite_inicio, limite_fim)
    # implemente aqui!
    apostas=[]
    x=0
    while x<qtd
        puts "digite em qual numero vc vai apostar"
        aux=gets.chomp.to_i
        if !existe_no_array(apostas, aux) &&(aux<=60&&aux>=1)
            apostas[x]=aux
            x=x+1
        else
            puts "numero digitado é invalido"
        end
    end
    return apostas
end
def verificar_acertos(sorteados, apostados)
    # implemente aqui!
    acertados=[]
    x=0
    while x<apostados.size-1
        if existe_no_array(sorteados, apostados[x])
            acertados[acertados.size]=apostados[x]
        end
        x=x+1
    end
    return acertados
end
def existe_no_array(array, valor)
    aux=0
    while aux<array.size-1
        if(array[aux]==valor)
            return true
        end
        aux=aux+1
    end
    return false
end
def parabenizacao(acertados)
    if (acertados.size>3)
        return "parabéns"
    else
        return "boa sorte na proxima"
    end
end
def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    puts "Numeros sorteados: #{sorteados.to_s()}"
    apostados = obter_apostas(8, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
    puts "Você acertou #{acertados.size.to_s()} numeros, #{parabenizacao(acertados)}"
end
mega_sena()
