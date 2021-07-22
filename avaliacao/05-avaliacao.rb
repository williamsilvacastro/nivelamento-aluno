# 5) O número PI ou 3.14159... pode ser obtido através de várias fórmulas. Uma forma simples de obtê-lo é pela fórmula de Leibniz,
# que diz que a convergência da seguinte série infinita é igual a PI:
# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...
# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula de Leibniz para obter o valor de PI.
# O resultado do cálculo deve ser retornado pela função.
# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, a função retorna nil.
# OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!
# Ex:
# puts(calcula_pi(4))
# # deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# # note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.
# (valor = 2.0)


def calcula_pi(termos)
    if termos>=1
        resultado=4/1.0
        for x in (1..termos-1)
            if x%2!=0
                resultado= resultado - 4.0/(1+(x*2))
            else
                resultado= resultado + 4.0/(1+(x*2))
            end
        end
        return resultado
    else
        return nil
    end
end


puts(calcula_pi(4))# deve imprimir 2.8952380952380956
puts(calcula_pi(5))# deve imprimir 3.33968253968
puts(calcula_pi(6))# deve imprimir 2.97604617605
puts(calcula_pi(7))# deve imprimir 3.28373848374
puts(calcula_pi(8))# deve imprimir 3.01707181707
puts "----------------------------------"
puts((Math::PI-calcula_pi(5))/-1)#quanto mais proximo de zero o numero printado, mais proximo de pi o valor retornado da funcao é,
puts((Math::PI-calcula_pi(6)))# ou seja quanto maior o parametro passado pra funcao menor deve ser o numero
puts((Math::PI-calcula_pi(7))/-1)#se for passado um parametro impar o valor retornado pela função será menor que pi 
puts((Math::PI-calcula_pi(1000)))#se for passado um parametro par o valor retornado pela função será maior que pi

