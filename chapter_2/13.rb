require 'pathname'

col1path = Pathname(__dir__).join('col1.txt')
col2path = Pathname(__dir__).join('col2.txt')

File.open Pathname(__dir__).join('col1_col2.txt'), 'w' do |f|
  File.open col1path, 'r' do |col1file|
    File.open col2path, 'r' do |col2file|
      while !col1file.eof? && !col2file.eof?
        col1 = col1file.eof? ? '' : col1file.readline.chomp
        col2 = col2file.eof? ? '' : col2file.readline.chomp

        f << [col1, col2].join("\t") + "\n"
      end
    end
  end
end
