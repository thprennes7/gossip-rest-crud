class Potin < ApplicationRecord
	validates :title,
		presence: true,
		length: {in: 3..14}
	validates :content,
		presence: true,
		length: {minimum: 25}
	belongs_to :user
end
