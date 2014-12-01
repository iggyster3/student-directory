
# Aarry of students
students =  [
            {:name => "Dr. Hannibal Lecter", :cohort => :november},
            {:name => "Darth Vader",  :cohort => :november},
            {:name => "Nurse Ratched", :cohort => :november},
            {:name => "Micheal Corleone", :cohort => :november},
            {:name => "Alex De Large", :cohort => :november},
            {:name => "The Alien", :cohort => :november},
            {:name => "Terminator", :cohort => :november},
            {:name => "Freedy Kruger", :cohort => :november},
            {:name => "The Joker", :cohort => :november}
            ]


# Print header and list of students
def print_header
    puts "The students of my cohort at Makers Academy"
    puts "-------------------------------------------"
end



# iterate through student array and print to stdout(Console)
def print(names)
    names.each do |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end


# Finally, we print the total students on the list
def print_footer(names)
    puts "Overall we have #{names.length} great students"
end


print_header
print(students)
print_footer(students)
