require 'json'

uk = $stdin.find {|line| JSON.parse(line)['title'] == 'イギリス' }
puts JSON.parse(uk)['text']
