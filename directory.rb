#Let's put all students into an array
students = [
 ["Steve Musgrave", :march],
 ["Sroop Sunar", :march],
 ["Colin Marshall", :march],
 ["Josh Fail-Brown", :march],
 ["Louise Lai", :march],
 ["Robin Doble", :march],
 ["Alex Wong", :march],
 ["Scott Dimmock", :march],
 ["Muhanad Al-Rubaiee", :march],
 ["Shelley Hope", :march],
 ["Will Hall", :march],
 ["Oliver Delevingne", :march],
 ["Nico", :march],
 ["Apostolis", :march],
 ["Stefania", :march],
 ["Robert Leon", :march],
 ["Emma Williams", :march],
 ["Joey Wolf", :march],
 ["Julie Walker", :march]
]

def print_header
puts "The students of my cohort at Makers Academy"
puts "---------------"
end

def print(students)
	students.each do |student|
		puts "#{student[0]} (#{student[1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
