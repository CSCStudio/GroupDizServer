class SubEmailsController < ApplicationController

  def create
    SubEmail.create(email: params[:email])
    render status: 200, json: { message: "Created Successful" }
  end
end