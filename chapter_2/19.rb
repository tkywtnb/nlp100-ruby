require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')

col1_frequency = File.foreach(filepath).with_object(Hash.new {|hash, key| hash[key] = 0 }) do |line, hash|
  col1, *_ = line.split(/\t/)
  hash[col1] += 1
end

col1_frequency.sort_by {|_, count| -count }.each do |col1, count|
  puts "#{count} #{col1}"
end
