class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :voting_center
end
