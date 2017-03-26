puts $stdin
  .select {|line| line.chomp =~ /\A(={2,6})[^=]+\1\z/ }
  .map {|line| line.gsub(/\A(={2,6})([^=]+)\1/) { "#{$1.size}: #{$2.strip}" }  }
