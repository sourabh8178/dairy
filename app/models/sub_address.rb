class SubAddress < ApplicationRecord
	belongs_to :address
	has_many :products
end
