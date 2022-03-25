class Address < ApplicationRecord
	has_many :sub_addresses, dependent: :destroy
end
