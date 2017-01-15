#method for creating an interactive menu
@students = []
def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
  end

def print_menu
  puts "1. Input Students"
  puts "2. Show the list of students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list of students"
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
    when "4"
      load_file
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

# Method to load list of students from file from inside the program
def load_file(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

#Method to load list of students on start-up
def try_load_file
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_file(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else #if file doesnt exists
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

def student_input
  puts "Please enter the names of the enrolling students:"
  puts "To finish, press enter twice"
  #for first name
  name = STDIN.gets.chomp
  #while name isn't empty, repeat.
  while !name.empty? do
    #now to add student hashe
    @students << {name: name, cohort: :march}
    puts "Now we have #{@students.count} eeeevillll students"
    #gets another name
    name = STDIN.gets.chomp
  end
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

try_load_file
interactive_menu
