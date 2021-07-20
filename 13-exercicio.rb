# Exercicio 13
# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros e que deve retornar um novo array sem o elemento
# da posição alvo que estava no array informado. Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, 
# a função retorna o array inteiro.
# Enviar como 13-exercicio.rb

def remove_da_posicao(array, posicao)
    aux=[]
    if (posicao<=0 || posicao>=array.size-1)
        return array
    else
        x=0
        while x<array.size-1
            if x<posicao
                aux[x]=array[x]
            else
                aux[x]=array[x+1]
            end
            x=x+1
        end
        return aux
    end
end
puts "qual o tamanho do vetor que eu devo gerar?"
tamanho=gets.chomp.to_i
vetor = []
for aux in (1..tamanho)
    vetor[vetor.size]= rand(0..10)    
end
print vetor
puts
puts "digite o a posição que deseja tirar o valor no array"
posicao=gets.chomp.to_i
aux = vetor
vetor= remove_da_posicao(vetor, posicao)
if aux!=vetor
    puts "valor inserido com sucesso, o vetor ficou assim:"
    print vetor
    puts
else
    puts "não foi possivel inserir o valor na posição pedida"
    print vetor
    puts
end
