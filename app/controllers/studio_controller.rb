class StudioController < ApplicationController
	def brickell
		areas = Studio.where(area: "Brickell")
		
		render json: areas.to_json
		
	end

	def downtown
			areas = Studio.where(area: "Downtown")
		
		render json: areas.to_json

	end

	def wynwood
			areas = Studio.where(area: "Wynwood")
		
		render json: areas.to_json

	end







	def yogawyn
			act = Studio.where(activity: "Yoga", area: "Wynwood")
		
		render json: act.to_json

	end
	def yogabrick
			act = Studio.where(activity: "Yoga", area: "Brickell")
		
		render json: act.to_json

	end
	def yogadt
			act = Studio.where(activity: "Yoga", area: "Downtown")
		
		render json: act.to_json

	end
	def boxingdt
			act = Studio.where(activity: "Boxing", area: "Downtown")
		
		render json: act.to_json

	end

	def boxingwyn
			act = Studio.where(activity: "Boxing", area: "Wynwood")
		
		render json: act.to_json

	end
	def boxingbrick
			act = Studio.where(activity: "Boxing", area: "Brickell")
		
		render json: act.to_json

	end
	def pilateswyn
			act = Studio.where(activity: "Pilates", area: "Wynwood")
		
		render json: act.to_json

	end
	def pilatesdt
			act = Studio.where(activity: "Pilates", area: "Downtown")
		
		render json: act.to_json

	end

	def pilatesbrick
			act = Studio.where(activity: "Pilates", area: "Brickell")
		
		render json: act.to_json

	end
	def barrebrick
			act = Studio.where(activity: "Barre", area: "Brickell")
		
		render json: act.to_json

	end
	def barredt
			act = Studio.where(activity: "Barre", area: "Downtown")
		
		render json: act.to_json

	end

	def barrewyn
			act = Studio.where(activity: "Barre", area: "Wynwood")
		
		render json: act.to_json

	end

	def cyclewyn
			act = Studio.where(activity: "Cycling", area: "Wynwood")
		
		render json: act.to_json

	end
		def cycledt
			act = Studio.where(activity: "Cycling", area: "Downtown")
		
		render json: act.to_json

	end

		def cyclebrick
			act = Studio.where(activity: "Cycling", area: "Brickell")
		
		render json: act.to_json

	end
end
