class HomeController < ApplicationController
	before_action :is_tallier

	def index
		@zones = Zone.all
	end

	private

	def is_tallier
		if current_user && current_user.tally
			redirect_to conteo_index_path
		end
	end
end
