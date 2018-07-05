# understand
#   return grade level based on mean of 3 values
#
# i/o
#   input - 3 ints
#   output - letter grade
#
# algorithm
#   case for grade to letter conversion
#   reduce to calculate mean
#
# reflection
#   case mean
#   when 90..100 then 'A'
#
#   using the range is a much better way of doing this one
#   also, i didn't take advantage of the else clause
#   also, I could use a *arg to get a variable amount of grades

def get_grade(grade1, grade2, grade3)
  mean = (grade1 + grade2 + grade3) / 3

  case
  when mean >= 90 && mean <= 100 then 'A'
  when mean >= 80 && mean <  90  then 'B'
  when mean >= 70 && mean <  80  then 'C'
  when mean >= 60 && mean <  70  then 'D'
  when mean >= 0  && mean <  60  then 'F'
  end  
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
