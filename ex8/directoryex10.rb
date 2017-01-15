#method for collecting sudent data from using and adding to hash.
def student_input

  puts "PLease enter the names of the enrolling students:"
  name = gets.strip
puts "Please enter student Cohort"
cohort = gets.strip
  puts "To finish, press enter twice"
  #now for the empty array
  students = []
  #for first name
  #while name isn't empty, repeat.
  while !name.empty? do
    #first must check for entered cohort
    cohort = default_cohort(cohort)
    students << {name: name, cohort: cohort}
print "Now we have #{students.count} eeeevillll student"
puts pluralize(students)
    #gets another name
    name = gets.chop
    #gets another cohort
    cohort = gets.tr("\n"," ")
  end
  #return array
  students
end
def pluralize(students)
  if students.count > 1
    puts  "s."
end
end

def default_cohort(cohort_name)
  cohort_name = cohort_name.empty? ? "march" : cohort_name.upcase
#checking against typos
months = %w(JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER)
if months.include? cohort_name
  return cohort_name
else
  return "MARCH"
end
end

def print_header
puts "The Students of Villains Academy".center(50)
puts "------------------------------".center(50)
end

def printr(students) #changed to allow print elsewhere
students.each_with_index do |student, value|
  puts "#{value}. #{student[:name]} (#{student[:cohort]} cohort)".center(50)
end
end

def print_footer(students)
  if students.count > 1
puts "There are exactly #{students.count} eeeevilll students.".center(50)
else puts "There is exactly #{students.count} eeeevilll student.".center(50)
end
end
#now to call methods
students = student_input
print_header
printr(students)
puts
print_footer(students)
