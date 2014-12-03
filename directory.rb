# Array of student
def input_students

    puts "Please enter the names of the students"
    puts "To finish just enter return twice"

    # create an empty array
    students = []

    # get the first name
    name = gets.chomp.capitalize
    if /A/ =~ name
    # get chort
    cohort = gets.chomp
    end

    # while the name is not empty, repeat this code
    while !name.empty? do

      # pattern match whether name starts with a or A
      if /A/ =~ name

      # add the student hash of name and cohort to the empty array
      students << {:name => name, :cohort => cohort}

      # print number of students in current cohort
      puts "Now we have #{students.length} students"

    else
      puts "Your name does not start with a capital A, try again"
    end

      # get another name and chort from the user
      name = gets.chomp.capitalize
      if /A/ =~ name
      cohort = gets.chomp
      end
    end

    # return the array of students
    students
end

# Print header and list of students
def print_header
    puts "The students of my cohort at Makers Academy"
    puts "-------------------------------------------"
end



# iterate through array of student and cohort hash and print to stdout(Console)
def print(names)
    names.each.with_index(1) do |name, i|
    puts "#{i}: #{name[:name]} (#{name[:cohort]} cohort)"
    end
end


# Finally, we print the total students on the list
def print_footer(names)
    puts "Overall we have #{names.length} great students"
    puts
end

#students = input_students
#print_header
#print(students)
#print_footer(students)

def interactive_menu

  students = []

  loop do
    # 1. Print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    # 2. Read the input and send into a variable
    user_selection = gets.chomp

    # 3. Do what the user has asked
    case user_selection

    when "1"
      # input the students
      students = input_students
    when "2"
      # show the students
      print_header
      print(students)
      print_footer(students)
    when "9"
      # exit the program
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu
