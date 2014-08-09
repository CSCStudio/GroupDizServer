class  Api::V0::TopicsController < Api::V0::ApiController

  respond_to :json

  def index
    @topics = Topic.all
  end

  def show
    @points = Topic.find(params[:id]).points
  end

  def create
    @topic = Topic.create(title: params[:title], description: params[:description], creator: current_user)
    render status: 400, json: { message: @topic.errors.to_a.first } unless @topic.errors.empty?
    render 'general_info'
  end

  private

  # def topic_params
  #   params.require(:topic).permit(:title, :description)
  # end
end