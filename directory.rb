
@students = []

# Print header and list of students
def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------------------------------------"
end

# iterate through array of student and cohort hash and print to stdout(Console)
def print_student_list
    @students.each.with_index(1) do |student, i|
      puts "#{i}: #{student[:name]} (#{student[:cohort]} cohort), my hobby is #{student[:hobby]} and i was born in #{student[:country_birth]}"
    end
end

# Finally, we print the total students on the list
def print_footer
  puts "Overall we have #{@students.length} great students"
  puts
end

# Array of student
def input_students

    puts "Please enter the names of the students"
    puts "To finish just enter return twice"


    # get the first name
    name = STDIN.gets.capitalize.chop

    while  name.length < '12'.to_i do

      if /A/ =~ name
        # get chort
        cohort = STDIN.gets.chop

        # get hobby
        hobby = STDIN.gets.capitalize.chop

        # get country of birth
        country_birth = STDIN.gets.capitalize.chop

      end

      # while the name is not empty, repeat this code
      while !name.empty? do

        if name == "Quit"
          break
        end

          # pattern match whether name starts with a or A
          if /A/ =~ name

            # add the student hash of name and cohort to the empty array
            @students << {:name => name, :cohort => cohort, :hobby => hobby, :country_birth => country_birth}

            if @students.length <= 1
              puts "Now we have #{@students.length} student."
              # print number of students in current cohort
            elsif @students.length > 1
              puts "Now we have #{@students.length} students"
            else
            puts "Your name does not start with a capital A, try again"
          end
        end

          # get another name and chort from the user
          name = STDIN.gets.capitalize.chop

            if /A/ =~ name && name.length < '12'.to_i
            cohort = STDIN.gets.capitalize.chop
            # get hobby
            hobby = STDIN.gets.capitalize.chop

            # get country of birth
            country_birth = STDIN.gets.capitalize.chop
            end
        end
        break
      end
end

def print_menu
   puts "1. Input the students"
   puts "2. Show the students"
   puts "3. Save the list to students.csv"
   puts "4. Load the list from students.csv"
   puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def add_students(name, cohort, hobby, country_birth)
  @students << {:name => name, :cohort => cohort.to_s, :hobby => hobby, :country_birth => country_birth}
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:hobby], student[:country_birth]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  # close the file
  file.close()
end

def load_students(filename = "students.csv")
    file = File.open(filename, "r")
    file.readlines.each do |line|
      name, cohort, hobby, country_birth = line.chop.split(',')
      add_students(name, cohort, hobby, country_birth)
      #@students << {:name => name, :cohort => cohort.to_s}
    end
    file.close()
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
     puts "Loaded #{@students.length} from #{filename}"
  else
    puts "Sorry, #{filename} does'nt exist."
    exit
  end
end
def interactive_menu
  loop do

    print_menu
    process(gets.chop)
  end
end

interactive_menu
