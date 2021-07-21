# 5) Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série (usar a função sort()) e retornar:
# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre os números das posições (n/2)-1 e (n/2)
# Ex.:
# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0
def bolha(vetor)
    array=[]
    for x in (0..vetor.size-1)
        array[x]=vetor[x]
    end
    for aux in (0..array.size-1)
        for aux2 in (0..array.size-1)
            if array[aux]<array[aux2]
                auxiliar=array[aux]
                array[aux]=array[aux2]
                array[aux2]=auxiliar
            end
        end
    end
    return array
end
def mediana(array)
    array_ordenado=bolha(array)
    if array_ordenado.size%2==0
        return (((array_ordenado[(array_ordenado.size/2.0)-1])+(array_ordenado[(array_ordenado.size/2.0)]))/2).to_f
    else
        return array_ordenado[array_ordenado.size/2.0].to_f
    end
end
puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0
# print bolha([10, 0, -1, -500, 20, 100])
# puts