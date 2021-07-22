# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar um valor numérico que deve ser o # resultado da soma da multiplicação entre os elementos que ocupam a mesma posição em cada array.
# Ex.:
# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.
# (valor = 1.5)


def multiplica_arrays(array,vetor)
    acumulador=0
    if array.size==vetor.size
        for x in (0..array.size-1)
            acumulador=acumulador+(array[x]*vetor[x])
        end
        return acumulador
    else
        return nil
    end

end


puts multiplica_arrays([1, 2, 3], [10, 20, 30])
puts multiplica_arrays([], [])