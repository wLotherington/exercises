def step(start, stop, step)
  idx = start

  while idx <= stop
    yield(idx)
    idx += step
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }