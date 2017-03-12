require 'pathname'

p File.readlines(Pathname(__dir__).join('hightemp.txt')).size

