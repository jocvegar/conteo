class City < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	belongs_to :zone
	has_many :voting_centers
end
