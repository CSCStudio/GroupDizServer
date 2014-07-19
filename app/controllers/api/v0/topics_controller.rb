class  Api::V0::TopicsController < Api::V0::ApiController

	def index
		render json: Topic.all 	
	end

end