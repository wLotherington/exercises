class Garden
  STUDENTS = %w(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry)
  PLANTS = { 'R' => :radishes, 'C' => :clover, 'G' => :grass, 'V' => :violets }

  def initialize(diagram, students = STUDENTS)
    @students = students
    @plants = parse(diagram)
    @matched_plants = match_students_to_plants
    generate_student_methods
  end

  def parse(diagram)
    rows = diagram.split("\n").map { |row| row.scan(/../) }
    plants = rows[0].zip(rows[1]).map(&:join)
  end

  def match_students_to_plants
    @students.sort.map(&:downcase).map.with_index do |student, idx|
      [student, @plants[idx] ]
    end.to_h
  end

  def generate_student_methods
    @students.each do |student|
      define_singleton_method(student.downcase) do
        @matched_plants[__method__.to_s].chars.map { |char| PLANTS[char] }
      end
    end
  end
end

garden = Garden.new("RC\nGG")
p garden.alice