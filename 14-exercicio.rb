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
        aux=rand(limite_inicio..limite_fim)
        if !existe_no_array(apostas, aux)
            apostas[x]=aux
            x=x+1
        end
    end
    return apostas
end
def verificar_acertos(sorteados, apostados)
    # implemente aqui!
    acertados=0
    x=0
    while x<sorteados.size
        y=0
        while y<apostados.size
            if(sorteados[x]==apostados[y])
                acertados=acertados+1
            end
            y=y+1
        end
        x=x+1
    end
    return acertados
end
def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    apostados = obter_apostas(6, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
end
mega_sena()
