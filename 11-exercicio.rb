def posicao_no_array(array, elemento)
    aux=0
    while aux<array.size-1
        if array[aux]==elemento
            return aux
        end
        aux+=1
    end
    return -1
end
vetor = [rand(0..10), rand(0..10), rand(0..10), rand(0..10), rand(0..10)]
puts vetor
puts "qual o elemento que deseja procurar no array?"
elemento = gets.chomp.to_i
if posicao_no_array(vetor, elemento)!=-1
    puts "o elemento que vc procura esta na posição: "+posicao_no_array(vetor, elemento).to_s
else
    puts "o elemento que vc procura não existe no vetor!"
end
