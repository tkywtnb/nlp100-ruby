require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')
n = Integer(ARGV[0])
buffer = []

File.foreach filepath do |line|
  buffer.push line
  buffer.shift if buffer.size > n
end

buffer.each do |line|
  print line
end
