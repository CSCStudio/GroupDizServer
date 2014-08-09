class  Api::V0::UsersController < Api::V0::ApiController
  respond_to :json
  skip_before_action :authorize_token!, :except => [:join_topic]

  def create
    @user = User.create(nickname: params[:nickname], identifier: params[:identifier])
    
    if @user.errors.empty?
      render status: 200, json: { message: "Created Successful" }
    else
      render status: 400, json: { message: @user.errors.to_a.first }
    end
  end

  def show
    @user = User.find_by(:identifier => params[:id])
  end

  def join_topic
    raise BadRequest unless params[:code]
    @topic = Topic.find_by(code: params[:code])
    if @topic 
      if @topic.participants << current_user
        render 'api/v0/topics/general_info'
      else
        render status: 400, json: { message: "You had Joined this room" }
      end
    else
      render status: 400, json: { message: "Topic Not Found" }
    end

  end
end