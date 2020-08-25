class City < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
end
