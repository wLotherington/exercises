class MinilangRuntimeError < RuntimeError; end
class EmptyStackError < MinilangRuntimeError; end
class InvalidTokenError < MinilangRuntimeError; end

class Stack
  attr_accessor :stack, :reg

  def initialize
    @stack = []
    @reg = 0
  end

  def n(n)
    self.reg = n.to_i
  end

  def push(n)
    stack.push(reg)
  end

  def add(n)
    self.reg = reg + pop
  end

  def sub(n)
    self.reg = reg - pop
  end

  def mult(n)
    self.reg = reg * pop
  end

  def div(n)
    self.reg = reg / pop
  end

  def mod(n)
    self.reg = reg % pop
  end

  def pop
    raise EmptyStackError.new('Empty stack!') if stack.empty?
    self.reg = stack.pop
  end

  def print(n)
    puts reg
  end
end

class Minilang
  attr_accessor :stack, :cmds

  def initialize(cmd_str)
    @stack = Stack.new
    @cmds = cmd_str.split
  end

  def eval
    cmds.each do |cmd|
      case cmd
      when /-?\d+/ then stack.send :n, cmd
      when "PUSH"  then stack.send :push, cmd
      when "ADD"   then stack.send :add, cmd
      when "SUB"   then stack.send :sub, cmd
      when "MULT"  then stack.send :mult, cmd
      when "DIV"   then stack.send :div, cmd
      when "MOD"   then stack.send :mod, cmd
      when "POP"   then stack.send :pop
      when "PRINT" then stack.send :print, cmd
      else raise InvalidTokenError.new("Invalid token: #{cmd}")
      end
    end
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)