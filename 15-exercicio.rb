OUROS = "\u2666".encode('utf-8')
ESPADAS = "\u2660".encode('utf-8')
COPAS = "\u2665".encode('utf-8')
PAUS = "\u2663".encode('utf-8')
baralho = [
    "A"+OUROS, "A"+ESPADAS, "A"+COPAS, "A"+PAUS,
    "2"+OUROS, "2"+ESPADAS, "2"+COPAS, "2"+PAUS,
    "3"+OUROS, "3"+ESPADAS, "3"+COPAS, "3"+PAUS,
    "4"+OUROS, "4"+ESPADAS, "4"+COPAS, "4"+PAUS,
    "5"+OUROS, "5"+ESPADAS, "5"+COPAS, "5"+PAUS,
    "6"+OUROS, "6"+ESPADAS, "6"+COPAS, "6"+PAUS,
    "7"+OUROS, "7"+ESPADAS, "7"+COPAS, "7"+PAUS,
    "8"+OUROS, "8"+ESPADAS, "8"+COPAS, "8"+PAUS,
    "9"+OUROS, "9"+ESPADAS, "9"+COPAS, "9"+PAUS,
    "10"+OUROS, "10"+ESPADAS, "10"+COPAS, "10"+PAUS,
    "J"+OUROS, "J"+ESPADAS, "J"+COPAS, "J"+PAUS,
    "Q"+OUROS, "Q"+ESPADAS, "Q"+COPAS, "Q"+PAUS,
    "K"+OUROS, "K"+ESPADAS, "K"+COPAS, "K"+PAUS
]#52 cartas
def exibe_array(array)
    for i in (0..array.size-1)
        print(array[i])
        if i < array.size-1
            print(", ")
        end        
    end
    print("\n")
end
def embaralhador(baralho)
    # implemente o algoritmo desta função
    # a função deve retornar um array com o "baralho" embaralhado
    # OBS.: Usar somente funções "raiz" de manipulação de arrays!
    x=0
    baralho_embaralhado=[]
    while x<52
        baralho_embaralhado[x]=baralho[gerar_numeros[x]]
        x=x+1
    end
    return baralho_embaralhado
end
def gerar_numeros()
    sorteados=[]
    x=0
    while x<53
        aux=rand(1..52)
        if !existe_no_array(sorteados, aux)
            sorteados[x]=aux
            x=x+1
        end
    end
    return sorteados
end
def existe_no_array(array, valor)
    aux=0
    while aux<array.size-1
        if(array[aux]==valor)
            return true
        end
        aux=aux+1
    end
    return false
end
puts "Baralho ANTES:"
exibe_array(baralho)
puts "Baralho DEPOIS:"
exibe_array(embaralhador(baralho))
# puts "o tamanho do baralho embaralhado é "+embaralhador(baralho).size.to_s
