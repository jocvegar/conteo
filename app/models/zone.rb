class Zone < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_many :cities
	has_many :voting_centers, through: :cities
	has_many :voters, through: :voting_centers
end
