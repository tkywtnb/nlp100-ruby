def ngram(sequence, n)
  sequence.each_cons(n).to_a
end
