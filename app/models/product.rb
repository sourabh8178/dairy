class Product < ApplicationRecord
	belongs_to :sub_address
	validates :name, presence: true

	mount_uploader :image, ImageUploader


	def calculate_discount(product)
		return (product.price.to_f - product.discount.to_f)
	end
end
