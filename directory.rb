#!/bin/env ruby
# encoding: utf-8

student_count = 22 
#first, we print the list of students 
students = [
"Javier Silverio",
"Elliot Lewis",
"Ben Tillett",
"Vincent Koch",
"Michelle Ballard",
"Nick Roberts",
"Tatiana Soukiassian", 
"Mervé Silk",
"Albert Vallverdu",
"Lovis Schultze",
"Henry Stanley",
"Spike Lindsey",
"Ruth Earle",
"Andy Gates",
"Faisal Aydarus",
"Ethel Ng",
"Kevin Daniells",
"Maya Driver",
"Leopold Kwok",
"James McNeil",
"Jerome Pratt",
"David Wickes",
"Chris Oatley",
"Marc Singh"
]

def print_header 
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def out(names)
    names.each { |x| puts x} 
    end 

def print_footer(names)
	puts "Overall, we have #{names.length} great students" 
end

print_header
out(students) 
print_footer(students) 
