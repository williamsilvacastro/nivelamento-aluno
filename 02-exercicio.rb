diasNoAno=365
horasNoDia=24
minutosEmUmaHora=60
segundosEmUmMinuto=60
expectativaEmAnosDeVida=80
idadeEmSegundos= 1232000000.0
horasPorAno=diasNoAno*horasNoDia
minutosEmDecada=10*diasNoAno*horasNoDia*minutosEmUmaHora
segundosDevida=20*diasNoAno*horasNoDia*minutosEmUmaHora*segundosEmUmMinuto
chocolatesVitalicios=150*expectativaEmAnosDeVida
idadeMilhonaria=(((idadeEmSegundos/segundosEmUmMinuto)/minutosEmUmaHora)/horasNoDia)/diasNoAno
puts "um ano tem "+ horasPorAno.to_s+" horas"
puts "uma decada tem "+minutosEmDecada.to_s+" minutos"
puts "eu tenho "+ segundosDevida.to_s+" segundos de vida"
puts "eu pretendo comer "+chocolatesVitalicios.to_s+" chocolates durante a minha vida xd"
puts "se a sua idadde é 1232 milhoes de segundos, voce tem "+idadeMilhonaria.to_s+" anos de vida"


