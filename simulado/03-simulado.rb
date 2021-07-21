# 3) Escreva uma função chamada "calcula_media" que deve receber um array de números
# como parâmetro e deve retornar o valor da média aritmética entre todos os números do array.
# puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0

def calcula_media(array)
    soma=0.0
    aux=0
    while aux<=array.size-1
        soma=soma+array[aux]
        aux=aux+1
    end
    return soma/array.size
end
puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
puts(calcula_media([8, -15, 200, 2, -3, 10]))