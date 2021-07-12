x=10
def calcula()
    x=x*2
end
puts x
##-----------------
$x=10
def calcula()
    $x=$x*2
end
puts $x
##-----
x=10
def calcula(x)
    x=x*10
    puts x
end
calcula(x)
puts x