
# Aarry of student

def input_students

    puts "Please enter the names of the students"
    puts "To finish just enter return twice"

    # create an empty array
    students = []

    # get the first name
    name = gets.chomp

    # get chort
    cohort = gets.chomp

    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {:name => name, :cohort => cohort}
      puts "Now we have #{students.length} students"

      # get another name from the user
      name = gets.chomp
      cohort = gets.chomp
    end

    # return the array of students
    students
end

# Print header and list of students
def print_header
    puts "The students of my cohort at Makers Academy"
    puts "-------------------------------------------"
end



# iterate through student array and print to stdout(Console)
def print(names)
    names.each.with_index(1) do |name, i|
    puts "#{i}: #{name[:name]} (#{name[:cohort]} cohort)"
    end
end


# Finally, we print the total students on the list
def print_footer(names)
    puts "Overall we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
