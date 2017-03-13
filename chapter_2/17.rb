require 'csv'
require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')
col1_values = []

CSV.foreach filepath, col_sep: "\t" do |row|
  col1_values << row[0]
end

col1_values.sort.uniq.each do |value|
  puts value
end
