students = [
            {:name => "Steve Musgrave", :cohort => :March, :gender => "male"},
            {:name => "Sroop Sunar", :cohort => :March, :gender => "female"},
            {:name => "Colin Marshall", :cohort => :March, :gender => "male"},
            {:name => "Josh Fail-Brown", :cohort => :March, :gender => "male"},
            {:name => "Louise Lai", :cohort => :March, :gender => "female"},
            {:name => "Robin Doble", :cohort => :March, :gender => "male"},
            {:name => "Alex Wong", :cohort => :March, :gender => "male"},
            {:name => "Scott Dimmock", :cohort => :March, :gender => "male"},
            {:name => "Muhanad Al-Rubaiee", :cohort => :March, :gender => "male"},
            {:name => "Shelley Hope", :cohort => :March, :gender => "female"},
            {:name => "Will Hall", :cohort => :March, :gender => "male"},
            {:name => "Oliver Delevingne", :cohort => :March, :gender => "male"},
            {:name => "Nico", :cohort => :March, :gender => "male"},
            {:name => "Apostolis", :cohort => :March, :gender => "male"},
            {:name => "Stefania", :cohort => :March, :gender => "female"},
            {:name => "Robert Leon", :cohort => :March, :gender => "male"},
            {:name => "Emma Williams", :cohort => :March, :gender => "female"},
            {:name => "Joey Wolf", :cohort => :March, :gender => "male"},
            {:name => "Julie Walker", :cohort => :March, :gender => "female"},
  ]
  



def input_students
  puts "We need some information from you".center(100)
  puts "Please enter the names of the students".center(100)
    puts "To finish, just hit return twice".center(100)
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.to_sym
  # while the name is not empty, repear this code
  while !name.empty? do
    # add the student hash to the array
  puts "Which cohort are you in?".center(100)
  cohort = gets.chomp.to_sym
    students << {:name => name, :cohort => cohort}
    puts "Now we have #{students.length} students".center(100)
    # get another name from the user
    puts "Please input another name or hit return to finish".center(100)
    name = gets.chomp
  end 
  # return the array of student
  students
end


def print_header
  puts "The students of my cohort at Makers Academy".center(100, "~~~~")
  puts "---------".center(100)
end

def print_students(students)
    number = students.length
    counter = 0
    until counter >= number
    puts "#{counter + 1} #{students[counter][:name]} (#{students[counter][:cohort]}) cohort #{students[counter][:gender]}".center(100)
    counter += 1
  end
end


def print_footer(names)
puts "Overall, we have #{names.length} great students".center(100)
end 


def interactive_menu
  loop do 
    # 1. print the menu and ask the user what to do
    "1. Input the students"
    "2. Show the students"
    "9. Exit"
  # 1. print the menu and ask the user what to do
  # 2. read the input and save it into a variable
  selection = gets.chomp
  # 3. do what the user has asked
  case selection
  when "1"
    # input the students
  when "2"
    # show the students
  when "9"
    exit # this will cause the prgram to terminate
  else 
    puts "I don't know what you meant, try again"
  end
end


# nothing happens until we call the methods
students = input_students # this sets the variable students as the method 'input_students'. This variable then gets used in the following methods.
print_header
print_students(students)
print_footer(students)



#students.each_with_index do |student, index|
 #   if student[:name].length <= 12  