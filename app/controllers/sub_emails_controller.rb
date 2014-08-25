class SubEmailsController < ApplicationController

  skip_before_filter :verify_authenticity_token
 
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  respond_to :json

  def create
    SubEmail.create(email: params[:email])
    render status: 200, json: { message: "Created Successful" }
  end

  def index
    respond_with SubEmail.pluck(:email)
  end
end