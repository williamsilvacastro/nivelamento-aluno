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
else
    puts "voce errou"
end


