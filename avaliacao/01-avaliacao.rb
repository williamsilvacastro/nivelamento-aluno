# 1) Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar o produto resultante entre eles (a multiplicação de todos os elementos entre si).
# Ex.:
# puts(produto([1, 4, 7]))               # deve imprimir 28
# puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0
# (valor = 1.5)



def produto(array)
    acumulador=1
    for x in (0..array.size-1)
        acumulador=acumulador*array[x]
    end
    return acumulador
end
puts(produto([1, 4, 7]))               # deve imprimir 28
puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0