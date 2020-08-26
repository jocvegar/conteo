class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable

	validates :role, inclusion: { in: %w(super-admin coordinator admin tally),
		message: "%{value} is not a valid option", allow_nil: true }

	has_one :user_location
	has_one :voting_center, through: :user_location

	def tally
		self.role == "tally"
	end

end
