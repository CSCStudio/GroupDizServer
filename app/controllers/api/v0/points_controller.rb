class  Api::V0::PointsController < Api::V0::ApiController

  respond_to :json

  def create
    @point = Point.create point_params
    render status: 400, json: { message: @point.errors.to_a.first } unless @point.errors.empty?
    render 'general_info'
  end

  private

  def point_params
    params.permit(:title, :description, :topic_id).merge(:user_id => current_user.id)
  end
end