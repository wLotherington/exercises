def assignment(birds)
  yield birds
end

assignment(['raven', 'finch', 'hawk', 'eagle']) { |_, _, *raptors| puts "Raptos: #{raptors.join(', ')}" }