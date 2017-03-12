def typoglycemia(text)
  text.split(' ').map {|word| word.size > 4 ? "#{word[0]}#{word[1...-1].chars.shuffle.join}#{word[-1]}" : word } .join(' ')
end

p typoglycemia(%q(I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .))
