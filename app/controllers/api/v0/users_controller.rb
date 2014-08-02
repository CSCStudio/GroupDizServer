class  Api::V0::UsersController < Api::V0::ApiController
  respond_to :json
  skip_before_action :authorize_token!

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
end