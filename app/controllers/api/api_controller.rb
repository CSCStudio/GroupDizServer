class  Api::ApiController < ActionController::Base

  class Error < StandardError; end
  class BadRequest < Error; end
  class NotFound < Error; end
  class NotAcceptable < Error; end
  class UnprocessableEntity < Error; end


  rescue_from BadRequest do |e|
    head :bad_request
  end

  rescue_from NotFound do |e|
    head :not_found
  end

  rescue_from NotAcceptable do |e|
    head :not_acceptable
  end

  rescue_from UnprocessableEntity do |e|
    head :unprocessable_entity
  end

  before_action :authorize_token!

  protected

  def authorize_token!
    @current_user = User.find_by(:identifier => request_token)
    raise UnprocessableEntity if @current_user.nil?
  end

  def request_token
    auth_token = nil
    auth_header =  request.headers['Authorization']
    if auth_header.nil?
      auth_token = params[:identifier]
    else
      match = auth_header.match(/\AGROUP\s+.*?identifier=("|')(.+?)\1.*?\z/)
      auth_token = match[2] unless match.nil?
    end
    raise NotAcceptable unless auth_token
    auth_token
  end

  def current_user
    @current_user
  end
end