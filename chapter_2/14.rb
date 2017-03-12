require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')

n = Integer(ARGV[0])

File.foreach(filepath).with_index(1) do |line, index|
  print line
  break if index >= n
end
