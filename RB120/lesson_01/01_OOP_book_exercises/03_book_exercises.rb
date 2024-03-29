=begin
  Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...

  puts "Well done!" if joe.better_grade_than?(bob)
=end

class Student
  attr_accessor :name
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than(name)
    if self.grade > name.grade
        puts "well done #{@name}!"
    end
  end
  protected

  attr_accessor :grade
end

sarah = Student.new('Sarah', 90)
bob = Student.new('Bob', 80)

sarah.better_grade_than(bob)