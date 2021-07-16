puts"Bem vindo ao jogo de adivinhação"
numero=rand(0..100)
n=0
tentativas=1
while n<1
    puts "("+numero.to_s+")"
    puts"digite seu chute:"
    chute = gets.chomp
    if chute.include?(".")
        puts "valor com ponto flutuante"
        puts "valor invalido, tente novamente"
    elsif (chute!="0"&&chute.to_i==0)
        puts "valor invalido, tente novamente"
    elsif chute.to_i==numero
        puts "voce acertou!"
        n=n+1
    elsif chute.to_i>=100 
        puts "o valor digitado é maior que 100, tente novamente"
    elsif chute.to_i<0
        puts "o valor digitado é menor que 0, tente novamente"
    elsif chute.to_i<numero
        puts "voce errou, chute um numero maior"
        tentativas=tentativas+1
    elsif chute.to_i>numero
        puts "voce errou, chute um numero menor"
        tentativas=tentativas+1
    end
end