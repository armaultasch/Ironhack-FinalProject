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

	def yoga
			act = Studio.where(activity: "Yoga")
		
		render json: act.to_json

	end
	def boxing
			act = Studio.where(activity: "Boxing")
		
		render json: act.to_json

	end
	def pilates
			act = Studio.where(activity: "Pilates")
		
		render json: act.to_json

	end
	def barre
			act = Studio.where(activity: "Barre")
		
		render json: act.to_json

	end
end
