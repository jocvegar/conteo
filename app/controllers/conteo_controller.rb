class ConteoController < ApplicationController
	include Response
	include ExceptionHandler
	include CableReady::Broadcaster
	before_action :authenticate_user!
	skip_before_action :verify_authenticity_token
	layout "tally"

	def index
	end

	def create
		@voter = Voter.create!(voter_params)
		json_response(@voter, :created)

		cable_ready["vote_count"].inner_html(
			selector: "#vote_count",
			html: render_to_string(partial: "home/zones",
				formats: [:html], locals: { zones: Zone.all })
		)
		cable_ready.broadcast
	end

	private

	def voter_params
	    params.require(:conteo).permit(:name, :identity, :voting_center_id)
	end
end
