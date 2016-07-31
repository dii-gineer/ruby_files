class Hobbies

	def set_name= (name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_hours=(hours)
		@hours = hours
	end

	def get_hours
		return @hours
	end

	def gear=(gear)
		@gear = gear
end

def get_gear
	return @gear
end
end

class Workout < Hobbies

	def wod
		return "suffer"
	end

end

class Music<Hobbies

	def play
		return "I play the violin"
	end

end

class Languages <Hobbies

	def think
		return "I have to think to code"
end
end

workout= Workout.new
workout.set_name= "Crossfit"
workout_name = workout.get_name

music = Music.new
music.set_name= "Violin Class"
music_name = music.get_name

language= Languages.new
language.set_name= "Ruby"
language_name = language.get_name

puts "In #{workout_name} I #{workout.wod}, In
#{music_name} #{music.play},
and #{language.think} because I am learning #{language_name}."

puts workout.inspect
puts music.inspect
puts language.inspect
