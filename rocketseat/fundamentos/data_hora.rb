require 'date'
puts "Data e hora atuais: #{DateTime.now}"
puts "Data e hora atuais formatadas: #{DateTime.now.strftime("%d/%m/%Y %H:%M:%S")}"


puts "Apenas data atual: #{Date.today}"
puts "Apenas ano atual: #{Date.today.year}"
puts "Apenas mês atual: #{Date.today.month}"
puts "Apenas dia atual: #{Date.today.day}"
puts "Apenas hora atual: #{Time.now.strftime("%H")}"
puts "Apenas minuto atual: #{Time.now.strftime("%M")}"
puts "Apenas segundo atual: #{Time.now.strftime("%S")}"
puts "Apenas milissegundo atual: #{Time.now.strftime("%L")}"
puts "Apenas microsegundo atual: #{Time.now.strftime("%N")}"
puts "Apenas timezone atual: #{Time.now.strftime("%z")}"
puts "Formato completo: #{Time.now.strftime("%Y-%m-%d %H:%M:%S.%L%z")}"
puts "Formato completo com nome do mês: #{Time.now.strftime("%B %d, %Y %H:%M:%S.%L%z")}"
puts "Formato completo com nome do dia da semana: #{Time.now.strftime("%A, %B %d, %Y %H:%M:%S.%L%z")}"


puts "Formato ISO 8601: #{DateTime.now.iso8601}"
puts "Formato RFC 2822: #{DateTime.now.rfc2822}"
puts "Formato RFC 3339: #{DateTime.now.rfc3339}"

puts "Date.new(2024, 6, 1): #{Date.new(2024, 6, 1)}"
puts "DateTime.new(2024, 6, 1, 12, 0, 0): #{DateTime.new(2024, 6, 1, 12, 0, 0)}"
puts "Time.new(2024, 6, 1, 12, 0, 0): #{Time.new(2024, 6, 1, 12, 0, 0)}"

puts "\nPodemos fazer arithmetic com datas e horas:"
puts "Data atual + 7 dias: #{Date.today + 7}"
puts "Data atual - 7 dias: #{Date.today - 7}"
puts "Data atual + 1 mês: #{Date.today >> 1}"
puts "Data atual - 1 mês: #{Date.today << 1}"
puts "Data atual + 6 meses: #{Date.today >> 6}"
puts "Data atual + 1 ano: #{Date.today >> 12}"
puts "Data atual - 1 ano: #{Date.today << 12}"

printf("Podemos também iterar sobre um range de datas usando o método `upto` do objeto `Date`. O método `upto` recebe uma data final e um bloco, e itera sobre cada data entre a data atual e a data final, passando cada data para o bloco. Isso é útil para realizar operações em um intervalo de datas, como imprimir cada data ou realizar cálculos com as datas.")
Date.today.upto(Date.today + 7) do |date|
  puts date
end
q = []
DateTime.now.upto(DateTime.now + 7) do |date|
  q << date
end
printf("As datas iteradas foram: %s\n", q.join(", "))

puts "temos os metodos `next_day`, `prev_day`, `next_month`, `prev_month`, `next_year` e `prev_year` para obter a próxima ou a anterior data, mês ou ano a partir de uma data específica."
puts "Data atual: #{Date.today}"
puts "Próximo dia: #{Date.today.next_day}"
puts "Dia anterior: #{Date.today.prev_day}"
puts "Próximo mês: #{Date.today.next_month}"
puts "Mês anterior: #{Date.today.prev_month}"
puts "Próximo ano: #{Date.today.next_year}"
puts "Ano anterior: #{Date.today.prev_year}"

puts "Podemos também comparar datas usando os operadores de comparação, como `==`, `!=`, `<`, `>`, `<=` e `>=`. Esses operadores comparam as datas com base em seus valores, e retornam um valor booleano indicando se a comparação é verdadeira ou falsa."
puts "Data atual: #{Date.today}"
puts "Data atual == Data atual: #{Date.today == Date.today}"
puts "Data atual != Data atual + 1 dia: #{Date.today != Date.today + 1}"
puts "Data atual < Data atual + 1 dia: #{Date.today < Date.today + 1}"
puts "Data atual > Data atual - 1 dia: #{Date.today > Date.today - 1}"
puts "Data atual <= Data atual: #{Date.today <= Date.today}"
puts "Data atual >= Data atual: #{Date.today >= Date.today}"

puts "\nPodemos também calcular a diferença entre duas datas usando o operador de subtração `-`. Esse operador retorna um objeto `Rational` que representa a diferença entre as duas datas em dias. Podemos converter esse valor para outros formatos, como horas, minutos ou segundos, usando os métodos `to_f`, `to_i` ou `to_r` do objeto `Rational`."
puts "Data atual: #{Date.today}"
puts "Data atual + 7 dias: #{Date.today + 7}"
puts "Diferença em dias: #{(Date.today + 7) - Date.today}"
puts "Diferença em horas: #{((Date.today + 7) - Date.today).to_f * 24}"
puts "Diferença em minutos: #{((Date.today + 7) - Date.today).to_f * 24 * 60}"
puts "Diferença em segundos: #{((Date.today + 7) - Date.today).to_f * 24 * 60 * 60}"

puts "\n temos outros metodos como date.yday date.wday date.cday date.cwday date.cweek date.jd date.mjd date.ajd date.strftime date.to_time date.to_datetime date.to_date date.sunday? date.monday? date.tuesday? date.wednesday? date.thursday? date.friday? date.saturday? "

require 'time'
puts "Podemos também usar a classe `Time` para lidar com datas e horas, que fornece uma representação de data e hora com precisão de segundos. A classe `Time` tem métodos semelhantes aos da classe `Date`, mas também inclui métodos adicionais para lidar com horas, minutos, segundos e timezone. Por exemplo, podemos usar o método `Time.now` para obter a data e hora atuais, e o método `Time.parse` para analisar uma string de data e hora em um objeto `Time`."

puts "\nData e hora atuais: #{Time.now}"
puts "time.parse('2024-06-01 12:00:00'): #{Time.parse('2024-06-01 12:00:00')}"
puts "time.parse('2024-06-01T12:00:00Z'): #{Time.parse('2024-06-01T12:00:00Z')}"
puts "time.parse('2024-06-01T12:00:00+00:00'): #{Time.parse('2024-06-01T12:00:00+00:00')}"
puts "time.parse('2024-06-01T12:00:00-03:00'): #{Time.parse('2024-06-01T12:00:00-03:00')}"
puts "time.parse('2024-06-01T12:00:00.123456Z'): #{Time.parse('2024-06-01T12:00:00.123456Z')}"
puts "time.parse('2024-06-01T12:00:00.123456-03:00'): #{Time.parse('2024-06-01T12:00:00.123456-03:00')}"


puts "time.getutc: #{Time.now.getutc}"
puts "time.getlocal: #{Time.now.getlocal}"

puts "time.utc_offset: #{Time.now.utc_offset}"
puts "time.zone: #{Time.now.zone}"

puts "time.getlocal('+03:00'): #{Time.now.getlocal('+03:00')}"
puts "time.getlocal('-03:00'): #{Time.now.getlocal('-03:00')}"
puts "time.getlocal('UTC'): #{Time.now.getlocal('UTC')}"
puts "time.getlocal('Europe/London'): #{Time.now.getlocal('Europe/London')}"
puts "time.getlocal('Asia/Tokyo'): #{Time.now.getlocal('Asia/Tokyo')}"
puts "time.getlocal('Australia/Sydney'): #{Time.now.getlocal('Australia/Sydney')}"

