class WelcomeController < ApplicationController
	def index
		@studio_array = Studio.all

		render "index"
	end






	def yogawyn
			@act = Studio.where(activity: "Yoga", area: "Wynwood")
			@activity_name = "Yoga"
			@area_name = "Wynwood"
		render "show"

	end
	def yogabrick
			@act = Studio.where(activity: "Yoga", area: "Brickell")
			@activity_name = "Yoga"
			@area_name = "Brickell"
		render "show"

	end
	def yogadt
			@act = Studio.where(activity: "Yoga", area: "Downtown")
			@activity_name = "Yoga"
			@area_name = "Downtown"
		render "show"

	end
	def boxingdt
			@act = Studio.where(activity: "Boxing", area: "Downtown")
			@activity_name = "Boxing"
			@area_name = "Downtown"
		render "show"

	end

	def boxingwyn
			@act = Studio.where(activity: "Boxing", area: "Wynwood")
			@activity_name = "Boxing"
			@area_name = "Wynwood"
		render "show"

	end
	def boxingbrick
			@act = Studio.where(activity: "Boxing", area: "Brickell")
			@activity_name = "Boxing"
			@area_name = "Brickell"
		render "show"

	end
	def pilateswyn
			@act = Studio.where(activity: "Pilates", area: "Wynwood")
			@activity_name = "Pilates"
			@area_name = "Wynwood"
		
		render "show"

	end
	def pilatesdt
			@act = Studio.where(activity: "Pilates", area: "Downtown")
			@activity_name = "Pilates"
			@area_name = "Downtown"
		render "show"

	end

	def pilatesbrick
			@act = Studio.where(activity: "Pilates", area: "Brickell")
			@activity_name = "Pilates"
			@area_name = "Brickell"
		render "show"

	end
	def barrebrick
			@act = Studio.where(activity: "Barre", area: "Brickell")
			@activity_name = "Barre"
			@area_name = "Brickell"
		render "show"

	end
	def barredt
			@act = Studio.where(activity: "Barre", area: "Downtown")
			@activity_name = "Barre"
			@area_name = "Downtown"
		render "show"

	end

	def barrewyn
			@act = Studio.where(activity: "Barre", area: "Wynwood")
			@activity_name = "Barre"
			@area_name = "Wynwood"
		render "show"

	end

	def cyclewyn
			@act = Studio.where(activity: "Cycling", area: "Wynwood")
			@activity_name = "Cycling"
			@area_name = "Wynwood"
		render "show"

	end
		def cycledt
			@act = Studio.where(activity: "Cycling", area: "Downtown")
			@activity_name = "Cycling"
			@area_name = "Downtown"
		render "show"

	end

		def cyclebrick
			@act = Studio.where(activity: "Cycling", area: "Brickell")
			@activity_name = "Cycling"
			@area_name = "Brickell"
		render "show"

	end
	
	


end
