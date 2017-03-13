require 'pathname'

filepath = Pathname(__dir__).join('hightemp.txt')

n = Integer(ARGV[0])
lines = File.readlines(filepath)
chunk_size = (lines.size.to_f / n).ceil

lines.each_slice(chunk_size).with_index(1) do |chunk, index|
  File.open Pathname(__dir__).join("hightemp_split_#{index}.txt"), 'w' do |f|
    chunk.each do |line|
      f.write line
    end
  end
end
