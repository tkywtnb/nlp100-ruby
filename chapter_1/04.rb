text = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'

p text.split(/\W+/).map.with_index(1) {|word, index| [word[0, [1, 5, 6, 7, 8, 9, 15, 16, 19].include?(index) ? 1 : 2], index] }.to_h
