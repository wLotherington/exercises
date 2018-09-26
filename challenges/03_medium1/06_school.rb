# understand
#   store student names and the grade they are in
#   methods - add sudent
#           - get list
#           - get sorted list
#           - to_h will return a hash where the keys are grades and the values are arrs of student names.
#
# reflection
#   a lot of people sorted the names every time they added one. this might be a little better for readability as
#     it avoids nesting to many layers of logic
#   a lot of people defined the hashformat in initialize which would avoid the ternary check in add name

# class School
#   def initialize
#     @school = {}
#   end

#   def to_h
#     @school.map { |grade, names| [grade, names.sort] }.sort.to_h
#   end

#   def add(name, grade)
#     @school.key?(grade) ? @school[grade].push(name) : @school[grade] = [name]
#   end

#   def grade(grade)
#     @school[grade]
#   end
# end

class School
  def initialize
    @school = Hash.new { |school, grade| school[grade] = []  }
  end

  def to_h
    @school.sort.to_h
  end

  def add(name, grade)
    @school[grade].push(name).sort!
  end

  def grade(grade)
    @school[grade]
  end
end