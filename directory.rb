
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
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"

# iterate through student array and print to stdout(Console)
students.each do |names|
  puts names
end

# Finally, we print the total students on the list
puts "Overall we have #{students.length} great students"
