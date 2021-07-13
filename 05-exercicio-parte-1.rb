def calc_diametro(raio)
    return raio*2
end
def calc_comprimento(raio)
    return calc_diametro(raio)*Math::PI
end
def calc_area(raio)
    return raio**2 *Math::PI
end
print "qual o valor do raio:"
raio = gets.to_f 
puts "se o raio de um circulo é :"+raio.to_s
puts "seu diametro é :"+calc_diametro(raio).to_s
puts "seu comprimento é :"+calc_comprimento(raio).to_s
puts "sua area é :"+calc_area(raio).to_s

# Exercicio 05
# Parte 1:
# Considere os métodos (as funções) escritos nos exercícios anteriores:
# Os métodos que calculam:
# - o diâmetro de um círculo é 2x o seu raio
# - o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# - a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva um programa que use esses métodos, porém, de tal forma que o valor do raio do círculo seja perguntado ao usuário.