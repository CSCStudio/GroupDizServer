class  Api::V0::UsersController < Api::V0::ApiController
  respond_to :json
  skip_before_action :authorize_token!

  def create
    user = User.create(nickname: params[:user][:nickname], identifier: request_token)
  end

  def show
    @user = User.find_by(:identifier => params[:id])
  end
end