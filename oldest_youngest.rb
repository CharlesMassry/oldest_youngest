#db = {}
#  puts "Enter people's names and ages followed by an empty line:"
#loop do
#  print "> "
#  input = gets.chomp
#  check = input.split(" ")
#  name = check[0]
#  age = check[1].to_i
#  db[name] = age
#  if input.empty?
#    break
#  end
#end
#db =  db.sort_by { | key, value | value }
#puts db.inspect
#puts "#{db[1][0]} is the youngest."
#puts "#{db[-1][0]} is the oldest."

#class Person
#  attr_reader :name, :age
#
#  def initialize(name, age)
#    @name = name
#    @age = age
#  end
#end

class DatabaseReader
  def initialize
    @db = {}
  end

  def run
    puts "Enter people's names and ages followed by an empty line:"
    loop do
      print "> "
      input = gets.chomp
      if input.empty?
        break
      end
      check = input.split(" ")
      name = check[0]
      age = check[1].to_i
      @db[name] = age
    end
    @db =  @db.sort_by { | name, age | age }
    puts "#{@db[1][0]} is the youngest"
    puts "#{@db[-1][0]} is the oldest"
  end
end

DatabaseReader.new.run
