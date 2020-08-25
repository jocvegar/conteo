class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable

	validates :role, inclusion: { in: %w(super-admin coordinator admin tally),
		message: "%{value} is not a valid option", allow_nil: true }
end
