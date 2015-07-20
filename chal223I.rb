def problem(input, problem_word)
  i = input.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
  p = problem_word.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}

  (i.keys & p.keys).each do |k|
    if i[k] != p[k]
      return false
    end
  end

  problem_word = problem_word.split('')
  input = input.split('')

  matches = Array.new
  problem_index = 0

  input.each do |i|
    if i == problem_word[problem_index]
      matches.push(problem_word[problem_index])
      problem_index += 1
      next
    end
  end

  matches.join == problem_word.join ? true : false
end

problem('synchronized', 'snond')
problem('misfunctioned', 'snond')
problem('mispronounced', 'snond')
problem('shotgunned', 'snond')
problem('snond', 'snond')
