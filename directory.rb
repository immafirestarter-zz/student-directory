# array of students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "John Doe",
  "Verbal Kint",
  "Nurse Ratched",
  "The Joker",
  "Colonel Hans Landa",
  "Hans Gruber",
  "Agent Smith",
  "Saruman",
  "Cersei Lannister"
]
def print_header
puts "The Students of Villains Academy"
puts "------------------------------"
end

def print(names)
names.each do |name|
  puts name
end
end

def print_footer(names)
puts "There are exactly #{names.count} eeeevilll students."
end
#now to call methods
print_header
print(students)
puts
print_footer(students)
