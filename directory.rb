#method for collecting sudent data from using and adding to hash.
def student_input

  puts "PLease enter the names of the enrolling students:"
  puts "To finish, press enter twice"
  #now for the empty array
  students = []
  #for first name
  name = gets.chomp
  #while name isn't empty, repeat.
  while !name.empty? do
    #now to add student hashe
    students << {name: name, cohort: :march}
    puts "Now we have #{students.count} eeeevillll students"
    #gets another name
    name = gets.chomp
  end
  #return array
  students
end

def print_header
puts "The Students of Villains Academy"
puts "------------------------------"
end

def print(students)
students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer(students)
puts "There are exactly #{students.count} eeeevilll students."
end
#now to call methods
students = student_input
print_header
print(students)
puts
print_footer(students)
