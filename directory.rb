#!/bin/env ruby
# encoding: utf-8

student_count = 22 
#first, we print the list of students 
students = [
{ :name =>"Javier Silverio", :cohort => :august},
{ :name =>"Elliot Lewis", :cohort =>:august},
{ :name =>"Ben Tillett", :cohort =>:august},
{ :name =>"Vincent Koch", :cohort =>:august},
{ :name =>"Michelle Ballard", :cohort =>:august},
{ :name =>"Nick Roberts", :cohort =>:august},
{ :name =>"Tatiana Soukiassian", :cohort =>:august},
{ :name =>"Mervé Silk", :cohort => :august},
{ :name =>"Albert Vallverdu", :cohort => :august},
{ :name =>"Lovis Schultze", :cohort => :august},
{ :name =>"Henry Stanley", :cohort => :august},
{ :name =>"Spike Lindsey", :cohort => :august},
{ :name =>"Ruth Earle",:cohort => :august},
{ :name =>"Andy Gates", :cohort => :august},
{ :name =>"Faisal Aydarus", :cohort => :august},
{ :name =>"Ethel Ng", :cohort => :august},
{ :name =>"Kevin Daniells",:cohort =>  :august},
{ :name =>"Maya Driver", :cohort => :august},
{ :name =>"Leopold Kwok", :cohort => :august},
{ :name =>"James McNeil", :cohort => :august},
{ :name => "Jerome Pratt", :cohort => :august},
{ :name =>"David Wickes",:cohort =>  :august},
{ :name =>"Chris Oatley", :cohort => :august},
{ :name =>"Marc Singh",:cohort =>  :august},
]

def input_student 
	 print "Please enter the names of the students\n"
	 print "To finish, just hit return twice\n"
	 #create and empty array 
	 students = []
	 #get the first name
	 name = gets.chomp
	 #while the name is not empy, repeat this code 
	 while !name.empty? do
		#add the student hash to the array
		students << { :name => name, :cohort => :august }
		print "Now we have #{students.length} students\n" 

		name = gets.chomp
	 end
students 
end 

def start_with(students, start_letter)
	 students.select { |students| 
	 students[:name][0] == start_letter }
end


def print_header 
	 print "The students of my cohort at Makers Academy\n"
	 print "-------------------------------------------\n"
end

def prints(students)
     students.each_with_index { |student, index |
    	     print "#{index} #{student[:name]} (#{student[:cohort]} cohort)\n" }
end

def print_footer(names)
	 puts "Overall, we have 1 great student" if names.length < 2 
	 print "Overall, we have #{names.length} great students\n" 
end

#print_header
#print(students) 
#print_footer(students) 

students = input_student 
print_header 
prints(start_with(students, "A"))
print_footer(students)

