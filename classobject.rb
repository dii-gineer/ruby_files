class Clients

  attr_writer :name, :age, :weight, :diet
  attr_reader :name, :age, :weight, :diet


def get_diet
  return "#{@name} is #{@age} years old and weights #{@weight} therefore the apropriate diet is as follow: #{@diet}"
end
end

my_client= Clients.new
my_client.name = "Diana"
my_client.age = "27"
my_client.weight ="135 Ibs"
my_client.diet = "2500 Calories per day"
puts my_client.get_diet
