class ConteoController < ApplicationController
	before_action :authenticate_user!

	include Response
	include ExceptionHandler

	layout "tally"
	skip_before_action :verify_authenticity_token

	def index
	end

	def create
		@voter = Voter.create!(voter_params)
		json_response(@voter, :created)
	end

	private

	def voter_params
	    params.require(:conteo).permit(:name, :identity, :voting_center_id)
	end
end


