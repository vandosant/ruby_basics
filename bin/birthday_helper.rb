# get input
input = gets().chomp.capitalize

# read data
data = Array.new
File.open('/Users/sskender/gSchoolWork/ruby_basics/bin/birthday_data.csv').each do |line|
  data += line.split(/,/)
end

# get setup to parse data
class Birthday
  require 'date'
  def initialize(last_name, first_name, date_of_birth, email)
    @last_name = last_name.chomp
    @first_name = first_name.chomp
    @date_of_birth = date_of_birth.chomp
    @email = email.chomp
    @age = 0
  end
  def first_name
    @first_name
  end
  def age
    today = Date._parse(Time.now.to_s.slice(/\d+-\d+-\d+/))
    parsed_birthdate = Date._parse(@date_of_birth)
    @age = (today[:year] - parsed_birthdate[:year])
    month_names = {5 => "May"}
    puts month_names[parsed_birthdate[:mon]].to_s + " " + parsed_birthdate[:mday].to_s + ", " + parsed_birthdate[:year].to_s + ",\n                                " + @age.to_s + " years old"
  end
end

# parse data
count = 0
identity = 0
personas = Array.new
while count < data.length
  personas[identity] = Birthday.new(data[count], data[count+1], data[count+2], data[count+3])
  count += 4
  identity += 1
end

# process input
identity = 0
personas.each {
  if input == personas[identity].first_name
    personas[identity].age
  end
identity += 1
}