# understand
#   create stack which is an array
#   receive string of commands and inputs
#   execute minilang commands
#
# algorithm
#   split
#   iterate through each and execute command
#
# reflection
#   they did not have any sub methods
#   this makes sence since every mothos is only 1 line

def minilang(commands)
  register = 0
  stack = []

  commands.split.each do |cmd|
    case cmd
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PUSH'  then stack.push(register)
    when 'PRINT' then puts register
    else              register = cmd.to_i if cmd =~ /^-?\d+$/
    end
  end
end

# (3 + (4 * 5) - 7) / (5 % 3)
# further exploration
minilang('3 PUSH 5 MOD PUSH 3 PUSH 7 PUSH 4 PUSH 5 MULT SUB ADD DIV')

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)