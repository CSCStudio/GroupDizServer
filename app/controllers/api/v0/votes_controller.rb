class  Api::V0::VotesController < Api::V0::ApiController
  respond_to :json

  def create
    @point = Point.find_by(id: params[:point_id])
    kind = params[:kind] == 'disagree' ? 0 : 1
    @vote = @point.votes.build(user: current_user, kind: kind)
    if @vote.save
      render status: 200, json: { message: "Voted Successful" }
    else
      render status: 400, json: { message: @vote.errors.to_a.first }
    end
  end
end