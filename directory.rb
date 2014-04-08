def input_students
  puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repear this code
  while !name.empty? do
    # add teh student hash to the array
    students << {:name => name, :cohort => :march}
    puts "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end 
  # return the array of student
  students
end


def print_header
  puts "The students of my cohort at Makers Academy"
  puts "---------"
end

def print_students(students)
  students.each_with_index do |student, index|
    if student[:name].length <= 12  
    puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)"
  end
  end
end


def print_footer(names)
puts "Overall, we have #{names.length} great students"
end 

# nothing happens until we call the methods
students = input_students # this sets the variable students as the method 'input_students'. This variable then gets used in the following methods.
print_header
print_students(students)
print_footer(students)
