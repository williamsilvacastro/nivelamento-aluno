# 6) Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array,
# contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.
# Ex.:
# print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
# puts
def menor_maior(array)
    aux=0
    maior=array[0]
    menor=array[0]
    while aux<=array.size-1
        if array[aux]>maior
            maior=array[aux]
        end
        if array[aux]<menor
            menor=array[aux]
        end
        aux=aux+1
    end
    return [menor, maior]
end
print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
puts