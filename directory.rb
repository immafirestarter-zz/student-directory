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
#printed array
puts "The Students of Villains Academy"
puts "------------------------------"
students.each do |student|
  puts student
end
#now for the total
puts
puts "There are exactly #{students.count} eeeevilll students."
