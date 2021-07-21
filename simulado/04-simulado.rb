# 4) Defina uma função chamada “imprimir_tabela”, que deve receber um número inteiro como parâmetro e deve imprimir na tela uma tabela de números seguindo a seguinte regra:
# 1
# 2 4
# 3 6 9
# ...
# n*1 n*2 n*3 ... n*n
# Valide se o parâmetro é um número maior que zero, se não for, a função deve imprimir na tela "ARGUMENTO INVÁLIDO"
# imprimir_tabela(5) # deve ser impresso na tela a seguinte tabela:
#  1
#  2 4
#  3 6 9
#  4 8 12 16
#  5 10 15 20 25
# imprimir_tabela(0) # deve ser impresso na tela: 
# ARGUMENTO INVÁLIDO
def imprimir_tabela(inteiro)
    if inteiro>=0
        aux1=1
        while aux1<=inteiro
            aux2=aux1
            while aux2<=aux1**2
                print (aux2).to_s+" "
                aux2=aux2+aux1
            end
            aux1=aux1+1
            puts
        end
    else
        puts "ARGUMENTO INVÁLIDO"
    end
end
imprimir_tabela(5)





# # SOLUCAO QUASE PRONTA COM RECUSIVIDADE
# def imprimir_tabela(inteiro)
#     if inteiro==1
#         puts 1
#     else
#         aux=1
#         while aux<=inteiro
#             print (inteiro*aux).to_s+" "
#             aux=aux+1
#         end
#         puts
#         imprimir_tabela(inteiro-1)
#     end
# end
# imprimir_tabela(5)