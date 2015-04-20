class Jewel < ActiveRecord::Base
	validates :name, presence: true
	validates :price, presence: true

	has_many :images
	has_many :reviews
end
