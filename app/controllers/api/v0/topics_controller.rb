class  Api::V0::TopicsController < Api::V0::ApiController

  respond_to :json

  def index
    @topics = Topic.all
  end

  def show
    @points = Topic.find(params[:id]).points
  end

end