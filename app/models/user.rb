class User < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	has_many :potins
	has_secure_password

	validates :password,
		presence: true,
		length: {minimum: 6}
end
