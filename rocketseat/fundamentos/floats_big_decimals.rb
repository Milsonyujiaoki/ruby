puts(f1 = 0.001)


puts(f1.class)
puts f1.object_id
puts f1.object_id >> 1
puts f1.object_id & 0x1

puts(f2 = 0.00000000000000000000000000000000000000000000000001)
puts(f2.class)
puts f2.object_id
puts f2.object_id >> 1
puts f2.object_id & 0x1

puts(MAX = Float::MAX)

# O tipo de dado Float em Ruby é uma representação de número de ponto flutuante, que é uma forma de representar números reais (números com casas decimais) em um formato binário. O tipo Float é baseado na especificação IEEE 754, que define um formato para representar números de ponto flutuante em computadores. O tipo Float em Ruby é implementado como um número de ponto flutuante de precisão dupla, o que significa que ele pode representar números com até 15-17 dígitos significativos e um intervalo de aproximadamente 10^-308 a 10^308.

# O tipo BigDecimal em Ruby é uma classe que fornece uma representação de números decimais de precisão arbitrária. Ele é usado para lidar com números decimais que exigem uma precisão maior do que a oferecida pelo tipo Float. O BigDecimal é especialmente útil para cálculos financeiros e outras aplicações onde a precisão é crítica, pois ele pode representar números decimais com um número arbitrário de dígitos significativos e um intervalo muito maior do que o tipo Float.

require 'bigdecimal'

puts(b1 = BigDecimal("0.001"))
puts(b2 = BigDecimal("0.00000000000000000000000000000000000000000000000001"))
puts(b1.class)
puts(b2.class)

# O tipo Float é uma representação de número de ponto flutuante, que é uma forma de representar números reais em um formato binário, enquanto o tipo BigDecimal é uma classe que fornece uma representação de números decimais de precisão arbitrária. O tipo Float tem uma precisão limitada e pode introduzir erros de arredondamento em cálculos, enquanto o tipo BigDecimal pode representar números decimais com um número arbitrário de dígitos significativos e é mais preciso para cálculos financeiros e outras aplicações onde a precisão é crítica.


f3 = 0.11111111111111111111 + 0.234432233
puts f3.round(5)
formatted_f3 = format("%.8f", f3)
puts formatted_f3
printf("%.8f\n", f3)
#sprintf("%.5f\n", f3)

printf("Nunca guardar floats como valores monetarios, olhe o exemplo:\n")
total = 0.0
100.times { total += 0.01 }
printf("Somar floats retorna valores maiores que o esperado: %.50f\n total.class: %s\n", total, total.class)
total = BigDecimal("0.0")
100.times { total += BigDecimal("0.01") }
printf("Usar BigDecimal para evitar erros de arredondamento: %.50f\n total.class: %s\n", total, total.class)

printf("Alem disso é necessário tomar cuidado ao dividir por zero, pois isso pode resultar em um valor infinito ou NaN (Not a Number), dependendo do contexto. Por exemplo, se você tentar dividir um número por zero usando o tipo Float, o resultado será infinito ou NaN, dependendo do sinal do número. No entanto, se você tentar dividir um número por zero usando o tipo BigDecimal, o resultado será uma exceção ZeroDivisionError, que é uma forma mais segura de lidar com esse tipo de erro em cálculos financeiros e outras aplicações onde a precisão é crítica.\n")
a = 1.0
b = 0.0
c = a / b
puts "Dividir por zero usando Float: #{c} (#{c.class})"
printf("c == Float::INFINITY: %s\n", c == Float::INFINITY)
printf("c.infinite?: %s\n", c.infinite?)
begin
  result = BigDecimal("1.0") / BigDecimal("0.0")
  printf("Dividir por zero usando BigDecimal: %s\n", result)
  printf("result == BigDecimal('Infinity'): %s\n", result == BigDecimal("Infinity"))
  printf("result.infinite?: %s\n", result.infinite?)
rescue ZeroDivisionError => e
  puts "Dividir por zero usando BigDecimal: #{e.message} (#{e.class})"
end
printf("Dividir por zero usando Float: %.2f\n", a / b)
printf("Dividir por zero usando BigDecimal: %s\n", begin
  BigDecimal("1.0") / BigDecimal("0.0")
rescue ZeroDivisionError => e
  e.message
end)

zero = 0.0
big_zero = BigDecimal("0.0")
printf("Dividir zero por zero usando Float: %.2f\n", zero / zero)
printf("Dividir zero por zero usando BigDecimal: %s\n", begin
  big_zero / big_zero
rescue ZeroDivisionError => e
  e.message
end)

infinite = Float::INFINITY
big_infinite = BigDecimal("Infinity")
printf("Dividir infinito por infinito usando Float: %.2f\n", infinite / infinite)
printf("Dividir infinito por infinito usando BigDecimal: %s\n", begin
  big_infinite / big_infinite
rescue ZeroDivisionError => e
  e.message
end)

printf("Tomar cuidado com infinito negativo: -1 / 0.0 = %.2f\n", -1.0 / 0.0)
printf("(-1.0 / 0.0).infinite? %s\n", (-1.0 / 0.0).infinite?)
printf("Tomar cuidado com infinito negativo usando BigDecimal: %s\n", begin
  BigDecimal("-1.0") / BigDecimal("0.0")
rescue ZeroDivisionError => e
  e.message
end)

a =BigDecimal("-1.0")
b = BigDecimal("0.0")
result = begin
  a / b
rescue ZeroDivisionError => e
  e.message
end
printf("Dividir -1.0 por 0.0 usando BigDecimal: %s\n", result)
printf("result == BigDecimal('-Infinity'): %s\n", result == BigDecimal("-Infinity"))
printf("BigDecimal(\"-1.0\") / BigDecimal(\"0.0\") result.infinite?: %s\n", result.infinite?)

printf("\nPodemos fazer type casting:\n")

a = 0.1
printf("a, a.class: %f %s\n", a, a.class)
printf("a, a.to_s.class:%f %s\n", a.to_s , a.to_s.class)
printf("Descobrir se sao imediatie values: a.object_id & 0x1: %s\n", (a.object_id & 0x1))


b = BigDecimal("0.1")
printf("\n b, b.class: %s %s\n", b, b.class)
printf("b, b.to_f.class: %f %s\n", b.to_f, b.to_f.class)
printf("Descobrir se sao imediatie values: b.object_id & 0x1: %s\n", (b.object_id & 0x1))


printf("\n tambem podemos encadear os casts:\n")
printf("b, b.to_f.to_s.class: %f %s\n", b.to_f.to_s, b.to_f.to_s.class)
