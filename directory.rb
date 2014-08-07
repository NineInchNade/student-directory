def input_student 
	 print "Please enter the names of the students\n"
	 print "To finish, enter exit\n"
	 students = []
	 loop do
		name = gets.strip
		break if name == "exit" 
		puts "Now enter their cohort"
		cohort = gets.strip
		break if cohort == "exit"
		students << new_student(name, cohort)
		print "Now we have #{numb_of_students(students)}\n" 
	 end
students 
end 

def first_letter(students, letter)
	students.select { |student| student[:name].start_with?(letter) }
end

def not_longer_than(students, name_length)
	 students.select { |students| 
	 students[:name].length <= name_length }
end

def new_student(name, cohort)
	 cohort = "August" if cohort.empty?
     {:name => name, :cohort => cohort} 
 end

def group(students, grouping_key)
	students.sort {|student_a, student_b| student_a[grouping_key] <=> student_b[grouping_key] }
end

def numb_of_students(students)
     if students.empty? 
		"no students at all!" 
	elsif students.length <= 1 
		 "only one student." 
	else 
		 "#{students.length} students"
	end
end

def print_header 
	 print "The students of my cohort at Makers Academy\n"
	 print "-------------------------------------------\n"
end

def prints(students)
     students.each_with_index do |student, index |
     print "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)\n" end
end

def print_footer(names)
	if names.empty? 
		puts "You did not enter anything" 
	elsif names.length <= 1 
		puts "Overall, there is one great student" 
	else 
		puts "Overall, there are #{first_letter(not_longer_than(names, 12),"A").length} students"
	end
end

students = input_student 
prints(group(students, :cohort))
print_footer(students)