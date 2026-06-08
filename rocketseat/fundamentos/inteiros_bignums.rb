# A linguagem Ruby tem um tipo de dado inteiro que é capaz de armazenar números inteiros de tamanho arbitrário, o que significa que ele pode lidar com números muito grandes sem problemas. Isso é possível graças à implementação interna do Ruby, que utiliza uma estrutura de dados chamada "Bignum" para representar números inteiros que excedem o limite dos tipos de dados tradicionais.
#
# ele gerencia a variavel como um objeto, e o valor da variavel é armazenado como um objeto separado na memória. O tipo do valor é determinado pelo próprio valor, e não pela variável em si. Isso significa que uma variável pode conter valores de diferentes tipos ao longo do tempo, dependendo do valor atribuído a ela.
# ou seja a linguagem nao tem overhead para gerenciar um numero como um objeto

v = 1

puts v.class

# Os inteiros são numeros com até 62 bits, e a partir disso, o ruby passa a usar o tipo Bignum para armazenar numeros maiores que isso
# um bit é para o sinal do numero e o outro é para indicar se o valor é um imediate value, a propria referencia da variavel carrega o valor da variavel.
#
puts (2 ** 62).class

# O object_id é um identificador único para cada objeto em Ruby, e ele é usado para identificar o objeto na memória. Para inteiros pequenos, o Ruby utiliza uma otimização chamada "immediate values", onde o valor do inteiro é armazenado diretamente no object_id, em vez de criar um objeto separado na memória. Isso significa que para inteiros pequenos, o object_id é calculado de forma a incluir o valor do inteiro, e não apenas um identificador para um objeto separado.

puts v.object_id

# Ao comparar o object_id de um inteiro pequeno com o valor do inteiro, podemos ver que eles estão relacionados. O object_id de um inteiro pequeno é calculado de forma a incluir o valor do inteiro, e isso é feito usando uma operação bitwise para garantir que o object_id seja único para cada valor inteiro.
puts v.object_id & 0x1

# Deslocando 1 bit para direita, podemos obter o valor do inteiro a partir do object_id. Isso é possível porque o object_id de um inteiro pequeno é calculado de forma a incluir o valor do inteiro, e o deslocamento de bits nos permite extrair esse valor.
puts v.object_id >> 1

puts v = 42000
puts v.object_id
puts v.object_id >> 1
puts v.object_id & 0x1


# Numeros muito grandes não carregam o valor do numero no object_id, e sim um identificador para um objeto separado na memória, que é o caso dos Bignums. O object_id de um Bignum é um identificador único para o objeto separado na memória, e não inclui o valor do número em si. Portanto, ao comparar o object_id de um Bignum com o valor do número, não há uma relação direta entre eles, e o object_id não pode ser usado para extrair o valor do número como acontece com os inteiros pequenos.
puts (v = (2 ** 62))
puts (v).object_id
puts (v).object_id >> 1
puts (v).object_id & 0x1

# Aqui podemos testar com um numero que é o maior inteiro pequeno, ou seja, o maior numero que pode ser armazenado como um inteiro pequeno, que é (2 ** 62) - 1. Nesse caso, o object_id ainda inclui o valor do número, e podemos extrair o valor do número usando o deslocamento de bits, assim como fizemos com os inteiros pequenos anteriores. No entanto, se tentarmos usar um número maior que isso, como (2 ** 62), o object_id não incluirá mais o valor do número, e não poderemos extrair o valor usando o deslocamento de bits.
puts (v = (2 ** 62) - 1)
puts (v).object_id
puts (v).object_id >> 1
puts (v).object_id & 0x1

# Podemos verificar os metodos de um inteiro pequeno e de um Bignum para ver as diferenças entre eles. Os inteiros pequenos têm métodos específicos para lidar com operações aritméticas e outras operações comuns, enquanto os Bignums têm métodos adicionais para lidar com números grandes, como métodos para calcular o número de dígitos, ou para converter o número em uma string.

#puts (2 ** 62).methods.sort
#puts (2 ** 62 - 1).methods.sort


puts    big_num = 2 ** 100
puts    big_num
puts    big_num.class
puts    big_num.object_id
puts    big_num.object_id >> 1
puts    big_num.object_id & 0x1

#puts    big_num.methods.sort
