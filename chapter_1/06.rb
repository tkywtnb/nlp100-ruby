require_relative 'ngram'

a = 'paraparaparadise'
b = 'paragraph'

x = ngram(a.chars, 2).uniq
y = ngram(b.chars, 2).uniq

puts 'X:'
p x

puts 'y:'
p y

puts '和集合:'
p x | y

puts '積集合:'
p x & y

puts '差集合:'
p x - y

puts 'bi-gram "se" が X に含まれているか:'
p x.include?(%w(s e))

puts 'bi-gram "se" が Y に含まれているか:'
p y.include?(%w(s e))
