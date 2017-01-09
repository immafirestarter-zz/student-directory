# converted array to hashes of students
students = [
  {name: "Dr. Hannibal Lecter", cohort: :march},
  {name: "Darth Vader", cohort: :march},
  {name: "John Doe", cohort: :november},
  {name: "Verbal Kint", cohort: :november},
  {name: "Nurse Ratched", cohort: :march},
  {name: "The Joker", cohort: :november},
  {name: "Colonel Hans Landa", cohort: :november},
  {name: "Hans Gruber", cohort: :november},
  {name: "Agent Smith", cohort: :march},
  {name: "Saruman", cohort: :march},
  {name: "Cersei Lannister", cohort: :march}
]
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
print_header
print(students)
puts
print_footer(students)
