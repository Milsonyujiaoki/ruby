puts "Agora para os numeros racionais, booleanos e nulos, temos os seguintes tipos de dados em Ruby:"
puts "Racionais: Float, BigDecimal"
puts "Booleanos: true, false"
puts "Nulo: nil"

puts "\nOs racionais são números que podem ser representados como uma fração de dois inteiros, ou seja, um número que pode ser expresso como a razão entre dois inteiros. Em Ruby, os racionais são representados pelos tipos de dados Float e BigDecimal. O tipo Float é usado para representar números racionais com precisão limitada, enquanto o tipo BigDecimal é usado para representar números racionais com precisão arbitrária, o que significa que ele pode lidar com números racionais muito grandes ou muito pequenos sem perder precisão."

puts "Agora vamos criar algumas variáveis com esses tipos de dados para ver como eles funcionam na prática:"
f = 1/3.to_r
puts "Racionais: #{f} (#{f.class})"
f = 1/3.0
puts f.to_r

puts "Float: #{f.to_r} (#{f.to_r.class})"
puts "BigDecimal: #{require 'bigdecimal'; b = (BigDecimal("0.1") / BigDecimal("0.2")).to_r} (#{b.class})"

puts "\nÉ possivel inicializar como racional 1/3r, ou usando o metodo to_r para converter um numero em um racional. O tipo Float tem uma precisão limitada e pode introduzir erros de arredondamento em cálculos, enquanto o tipo BigDecimal pode representar números decimais com um número arbitrário de dígitos significativos e é mais preciso para cálculos financeiros e outras aplicações onde a precisão é crítica.\n"

puts "\nSobre a aritmética mantemos o mesmo padrao para evitar floats, ou seja, usar o tipo BigDecimal para evitar erros de arredondamento. Por exemplo, se quisermos somar 0.1 e 0.2 usando o tipo Float, o resultado pode ser um número com uma precisão limitada, como 0.30000000000000004, em vez de 0.3. No entanto, se usarmos o tipo BigDecimal para somar 0.1 e 0.2, o resultado será exatamente 0.3, sem erros de arredondamento."

puts "\nExemplo 1/3r + 2/3r: #{1/3r + 2/3r}"
puts "Exemplo (1/3r + 2/3r).to_i: #{(1/3r + 2/3r).to_i}"
a =(1/3r * 2/3r).to_f
puts "Exemplo 1/3r * 2/3r: #{a} (#{a.class})"
puts "Exemplo BigDecimal (1/3r + 2/3r): #{require 'bigdecimal'; b = Rational(BigDecimal("1") / BigDecimal("3") + BigDecimal("2") / BigDecimal("3"))} (#{b.class})"

puts "true.class: #{true.class}"
puts "false.class: #{false.class}"
puts "nil.class: #{nil.class}"

puts "\nOs booleanos são valores que representam a verdade ou falsidade de uma expressão, e em Ruby, os booleanos são representados pelos valores true e false. O valor nil é um valor especial que representa a ausência de um valor ou a falta de um objeto, e é usado para indicar que uma variável não tem um valor atribuído ou que um método não retornou um valor significativo. O tipo nil é uma classe em Ruby, e o valor nil é o único objeto dessa classe."

puts "\nRevisando os immediate values com os tipos que já temos: "

puts "integer.object_id: #{(1.object_id & 0x1)}"
puts "float.object_id: #{(1.0.object_id & 0x1)}"
puts "bigdecimal.object_id: #{require 'bigdecimal'; (BigDecimal("0.1").object_id & 0x1)}"
puts "rational.object_id: #{((1/3r).object_id & 0x1)}"
puts "datetime.object_id: #{require 'date'; (DateTime.now.object_id & 0x1)}"
puts "date.object_id: #{require 'date'; (Date.today.object_id & 0x1)}"
puts "time.object_id: #{require 'time'; (Time.now.object_id & 0x1)}"
puts "string.object_id: #{('hello'.object_id & 0x1)}"
puts "true.object_id: #{(true.object_id & 0x1)}"
puts "false.object_id: #{(false.object_id & 0x1)}"
puts "nil.object_id: #{(nil.object_id & 0x1)}"

puts "\nPodemos fazer operações aritméticas com inteiros, floats, bigdecimals, racionais, datas e horas, e o resultado dessas operações pode ser um número inteiro, um número de ponto flutuante, um número decimal de precisão arbitrária, um número racional, ou uma data ou hora, dependendo dos tipos de dados envolvidos na operação. Por exemplo, se somarmos um inteiro e um float, o resultado será um float. Se multiplicarmos um inteiro por um racional, o resultado será um racional. Se subtrairmos uma data de outra data, o resultado será um número racional que representa a diferença entre as duas datas em dias. E assim por diante."
