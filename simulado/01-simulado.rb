# 1) Cada maça custa R$ 0,30, porém, se levar uma dúzia ou mais, o preço de cada uma baixa para R$ 0,25.
# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber como parâmetro a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.
# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.
# puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
# puts(preco_maca(12)) # deve imprimir 3.0
# puts(preco_maca(10)) # deve imprimir 3.0
def preco_maca(qtd)
    if qtd>0
        if qtd>=12
            return 0.25*qtd
        else
            return 0.30*qtd
        end
    else
        return nil
    end
end
puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
puts(preco_maca(12)) # deve imprimir 3.0
puts(preco_maca(10)) # deve imprimir 3.0