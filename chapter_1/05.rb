require_relative 'ngram'

text = 'I am an NLPer'

puts '単語 bi-gram:'
p ngram(text.split(/\W+/), 2)

puts '文字 bi-gram:'
p ngram(text.chars.reject {|c| c =~ /\W/ }, 2)
