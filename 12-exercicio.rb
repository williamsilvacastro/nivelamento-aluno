def insere_no_array(array, valor, posicao)
    if(posicao<=array.size-1)
        aux=array.size-1
        while aux>=posicao
            array[aux+1]=array[aux]
            aux=aux-1
        end
        array[posicao]=valor
        return true
    else
        return false
    end
end
puts "qual o tamanho do vetor que eu devo gerar?"
tamanho=gets.chomp.to_i
vetor = [rand(1..10)]
for aux in (1..tamanho-1)
    vetor[vetor.size]= rand(0..10)    
end
print vetor
puts
puts "digite o valor que deseja colocar no array"
valor=gets.chomp.to_i
puts "digite o a posição que deseja colocar o valor no array"
posicao=gets.chomp.to_i
if insere_no_array(vetor, valor, posicao)
    puts "valor inserido com sucesso, o vetor ficou assim:"
    print vetor
    puts
else
    puts "não foi possivel inserir o valor na posição pedida"
end
