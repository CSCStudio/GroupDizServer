class  Api::V0::TopicsController < Api::V0::ApiController

  def index
    render json: { topics: Topic.all }
  end

  def show
    topic = Topic.find(params[:id])
    render json: { topic: topic, points: topic.points }
  end

end