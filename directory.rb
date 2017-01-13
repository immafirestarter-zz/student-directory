#method for creating an interactive menu
@students = []
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
  end

def print_menu
  puts "1. Input Students"
  puts "2. Show the list of students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
    when "1"
  student_input
    when "2"
      show_students
    when "3"
      save_file
    when "9"
      exit
    else
      puts "I am sorry, I did not get that, please enter a valid command."
    end
end

def show_students
  print_header
  print_list
  puts
  print_footer
end
#method for collecting sudent data from using and adding to hash.
def save_file
  #first need to open file to write data to
file = File.open("students.csv", "w")
#iterating over student array
@students.each do |student|
  student_data = [student[:name], student[:cohort]]
  csv_line = student_data.join(",")
  file.puts csv_line
end
file.close
end

def student_input
  puts "Please enter the names of the enrolling students:"
  puts "To finish, press enter twice"
  #now for the empty array
  @students = []
  #for first name
  name = gets.chomp
  #while name isn't empty, repeat.
  while !name.empty? do
    #now to add student hashe
    @students << {name: name, cohort: :march}
    puts "Now we have #{@students.count} eeeevillll students"
    #gets another name
    name = gets.chomp
  end
  #return array
  @students
end

def print_header
puts "The Students of Villains Academy"
puts "------------------------------"
end

def print_list
@students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer
puts "There are exactly #{@students.count} eeeevilll students."
end

interactive_menu
