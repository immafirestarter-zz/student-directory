#method for collecting sudent data from using and adding to hash.
def student_input

  puts "PLease enter the names of the enrolling students:"
  name = gets.chomp
puts "Please enter student Cohort"
cohort = gets.chomp
  puts "To finish, press enter twice"
  #now for the empty array
  students = []
  #for first name
  #while name isn't empty, repeat.
  while !name.empty? do
    #first must check for entered cohort
    cohort = default_cohort(cohort)
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} eeeevillll students"
    #gets another name
    name = gets.chomp
    #gets another cohort
    cohort = gets.chomp
  end
  #return array
  students
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

def cohort_group(students)
  existing_cohorts = students.map do |student|
    student[:cohort]
  end
end


def print_header
puts "The Students of Villains Academy".center(50)
puts "------------------------------".center(50)
end

def print(students)
  #printed by cohort, not name
  existing_cohorts = cohort_group(students)
  existing_cohorts.each do |bohort|
    puts "The following students are in the #{bohort} cohort:"
students.each_with_index do |student, value|
  puts "#{value}. #{student[:name]}".center(50) if student[:cohort] == bohort
end
end
end

def print_footer(students)
puts "There are exactly #{students.count} eeeevilll students.".center(50)
end
#now to call methods
students = student_input
print_header
print(students)
puts
print_footer(students)
