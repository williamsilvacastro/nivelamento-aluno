# Estamos vivendo uma pandemia e o governador pediu um sistema para indicar qual a cor da fase pandêmica em que está o Estado.
# A cor da fase pandêmica é definida baseada em três valores:
# 1) A taxa de vacinação da população.
# 2) O fator de transmissão do vírus.
# 3) A taxa de ocupação dos leitos de UTI.
# As regras para definição de cada fase são as seguintes:
# - FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
# - FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator de transmissão menor que 1.
# - FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de transmissão menor que 1.
# - FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de transmissão menor que 1.
# - FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de transmissão for maior ou igual a 1.
# - FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
# Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber três parâmetros (taxa de vacinação, fator de transmissão e taxa de ocupação de leitos) e baseado nas regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.
# Ex.: ao executar o seguinte comando:
# fase_pandemica(0.1, 0.7, 0.5)
# Deve retornar a string "VERDE".
# Obs.: validar os parâmetros, considerando as seguintes regras:
# - taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
# - fator de transmissão dever ser um número maior ou igual a zero
# - taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
# Se houver alguma invalidação nas regras acima, retornar uma string que descreva a regra que foi invalidada.
# Obs. 2: escreva testes para demonstrar que o sistema está funcionando.

def fase_pandemica(taxa_de_vacinacao, fator_de_transmissao, taxa_ocupacao_de_leitos)
    if validacao_entradas(taxa_de_vacinacao) && validacao_entradas(fator_de_transmissao)&& validacao_entradas(taxa_ocupacao_de_leitos)
        if taxa_de_vacinacao > 0.8
            #fase azul
            return "AZUL"
        elsif taxa_ocupacao_de_leitos > 0.9
            #fase roxa
            return "ROXA"
        elsif taxa_ocupacao_de_leitos > 0.80 || fator_de_transmissao >= 1
            #fase vermelha
            return "VERMELHA"
        elsif taxa_ocupacao_de_leitos >= 0.65 && fator_de_transmissao < 1
            #fase laranja
            return "LARANJA"
        elsif taxa_ocupacao_de_leitos > 0.5 && fator_de_transmissao < 1
            #fase amarela
            return "AMARELA"
        elsif taxa_ocupacao_de_leitos <= 0.5 && fator_de_transmissao < 1
            #fase verde
            return "VERDE"
        end
    else
        return "ERRO"
    end
end

def validacao_entradas(entrada)
    if(entrada.class != Float)||!(entrada > 0)||!(entrada < 1)
        return false
    else
        return true
    end
end
# puts fase_pandemica(0.1, 0.7, 0.5)#verde
# puts fase_pandemica(0.1, 0.7, 0.51)#amarela
# puts fase_pandemica(0.1, 0.7, 0.65)#laranja
# puts fase_pandemica(0.1, 0.7, 0.8)#vermelha
# puts fase_pandemica(0.1, 0.7, 0.91)#roxa

puts "qual a taxa de vacinacão?"
taxa_de_vacinacao = gets.to_f
if !validacao_entradas(taxa_de_vacinacao)
    puts "valor da taxa de vacinacao preenchido errado"
    puts "o programa será encerrado"
else
    puts "qual o fator de transmissão?"
    fator_de_transmissao = gets.to_f
    if !validacao_entradas(fator_de_transmissao)
        puts "valor do fator de transmissão preenchido errado"
        puts "o programa será encerrado"
    else
        puts "qual a taxa de ocupacão de leitos?"
        taxa_ocupacao_de_leitos = gets.to_f
        if !validacao_entradas(taxa_ocupacao_de_leitos)
            puts "valor da taxa de ocupacao de leitos preenchido errado"
            puts "o programa será encerrado"
        else
            if fase_pandemica(taxa_de_vacinacao, fator_de_transmissao, taxa_ocupacao_de_leitos)!="ERRO"
                puts "a fase da pandeemia atual é "+ fase_pandemica(taxa_de_vacinacao, fator_de_transmissao, taxa_ocupacao_de_leitos)
            end
        end
        
    end

end

