raio=15
def calc_diametro(raio)
    return raio*2
end
def calc_comprimento(raio)
    return calc_diametro(raio)*Math::PI
end
def calc_area(raio)
    return raio**2 *Math::PI
end

puts "se o raio de um circulo é "+raio.to_s
puts " logo seu diametro é "+calc_diametro(raio).to_s
puts ", seu comprimento é "+calc_comprimento(raio).to_s
puts " e a sua area é "+calc_area(raio).to_s