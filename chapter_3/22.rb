puts $stdin
  .select {|line| line.start_with?('[[Category:') }
  .map {|line| line.scan(/\[\[Category:([^\]|]+)/) }
