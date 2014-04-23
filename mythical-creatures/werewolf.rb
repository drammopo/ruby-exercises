class Werewolf
	attr_reader :name, :location

	def initialize(name, location='London')
		@name = name		
		@location = location
		@human = true
	end

	def human?
		@human
	end

	def change!
		@human = @human ? false : true
	end

	def werewolf?
		!@human
	end

	alias_method :change, :change!
end