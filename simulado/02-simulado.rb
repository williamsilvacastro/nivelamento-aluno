# 2) Defina uma função chamada “negativos_positivos”, que deve receber um array de números e que deve retornar outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# deve imprimir o array [0.5, 0.25, 0.25]
# pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos
def negativos_positivos(array)
    x=0
    positivos=0.0
    zeros=0.0
    negativos=0.0
    while x<=array.size-1
        if array[x]<0
            negativos=negativos+1
        end
        if array[x]==0
            zeros=zeros+1
        end
        if array[x]>0
            positivos=positivos+1
        end
        x=x+1
    end
    return [positivos/array.size, zeros/array.size, negativos/array.size]
end
print(negativos_positivos([1, 2, -1, 0]))
print("\n")
# deve imprimir o array [0.5, 0.25, 0.25]
