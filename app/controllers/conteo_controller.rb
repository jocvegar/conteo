class ConteoController < ApplicationController
	layout "tally"

	def index
	end

	def create
		if @current_user
			@voter = Voter.new(name: params[:name], identity: params[:identity])
			@voter.voting_center_id = @current_user.voting_center.id

			status = @voter.save ? 201 : 422

			render json: { errors: @record.errors }, status: status
		else
			render json: { errors: { "user": [ "not found" ] } }, status: 422
		end
	end
end
