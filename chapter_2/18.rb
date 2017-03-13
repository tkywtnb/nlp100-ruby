require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')
lines = File.readlines(filepath)

lines.sort_by {|line| -Float(line.split(/\t/)[2]) }.each do |line|
  print line
end
