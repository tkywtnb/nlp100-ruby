puts $stdin
  .select {|line| line =~ /ファイル:/ }
  .map {|line| line.scan(/ファイル:([^|]+)/) }

