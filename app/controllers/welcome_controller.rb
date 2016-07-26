class WelcomeController < ApplicationController
	def index
		@studio_array = Studio.all
		
		render "index"

		
	end
end
