

def names
  puts "Hello What is your name?"
  name = gets
end
def determine_current_hour
  current_time= Time.new
  current_hour= current_time.hour
end

def greeting
  current_hour= determine_current_hour
  if (current_hour>3 && current_hour<12)
    time = "Morning"
  elsif (current_hour>12 && current_hour< 18)
    time = "Afternoon"
  elsif (current_hour>18 || current_hour <2)
    time = "Evening"
  end
  name = names
  puts "Good #{time}, #{name.capitalize}!"
end

  greeting
