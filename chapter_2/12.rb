require 'csv'
require 'fileutils'
require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')
col1path = Pathname(__dir__).join('col1.txt')
col2path = Pathname(__dir__).join('col2.txt')

FileUtils.rm_f [col1path, col2path]

CSV.foreach filepath, col_sep: "\t" do |row|
  File.write col1path, row[0] + "\n", nil, mode: 'a'
  File.write col2path, row[1] + "\n", nil, mode: 'a'
end
