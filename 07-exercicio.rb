puts"Bem vindo ao jogo de adivinhação"
numero=rand(0..100)
# numero=0
puts "("+numero.to_s+")"
puts"digite seu chute:"
chute = gets.chomp
if (chute!="0"&&chute.to_i==0)
    puts "valor invalido"
elsif chute.to_i==numero
    puts "voce acertou"
elsif chute.to_i<=100 
    puts "o valor digitado é maior que 100"
elsif chute.to_i>0
    puts "o valor digitado é menor que 0"
else
    puts "voce errou"
end


