class VotingCenter < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

  	belongs_to :city
  	has_many :voters
end
