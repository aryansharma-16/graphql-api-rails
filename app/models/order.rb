class Order < ApplicationRecord
	# Scopes
	scope :order_by_id, -> { order(:id) }

	# Vaildations
	validates :full_name, presence: true
	validates :address, presence: true
	validates :status, presence: true
	validates :item_name, presence: true
	validates :total, presence: true
end
