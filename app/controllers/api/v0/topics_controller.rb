class  Api::V0::TopicsController < Api::V0::ApiController

	respond_to :json

	def index
		respond_with Topic.all 	
	end

end