class UserDecorator < Draper::Decorator
	delegate_all

	def name_backwards
		name.reverse # isn't ruby awesome :)
	end
end
