require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')
print File.read(filepath).gsub(/\t/, ' ')
