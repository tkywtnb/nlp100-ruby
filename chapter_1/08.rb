def cipher(text)
  text.gsub(/([a-z])/){|c| (219 - c.ord).chr }
end

original = 'Lorem ipsum'
encrypted = cipher(original)

puts '原文:'
p original

puts '暗号化した文:'
p encrypted

puts '復号化した文:'
p cipher(encrypted)
