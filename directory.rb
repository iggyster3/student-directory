
# Aarry of students
students = ["Dr. Hannibal Lecter",
            "Darth Vader",
            "Nurse Ratched",
            "Micheal Corleone",
            "Alex De Large",
            "The Alien",
            "Terminator",
            "Freedy Kruger",
            "The Joker"]

# Print header and list of students
def print_header
    puts "The students of my cohort at Makers Academy"
    puts "-------------------------------------------"
end



# iterate through student array and print to stdout(Console)
def print(names)
    names.each do |name|
    puts name
  end
end


# Finally, we print the total students on the list
def print_footer(names)
    puts "Overall we have #{names.length} great students"
end


print_header
print(students)
print_footer(students)
