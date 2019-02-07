class User < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	has_many :potins
	has_secure_password
	has_many :comments
	has_many :likes
	belongs_to :city 

	validates :password,
		presence: true,
		length: {minimum: 6}

	validates :email,
		uniqueness: true
end
