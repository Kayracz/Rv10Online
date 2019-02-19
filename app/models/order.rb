class Order < ApplicationRecord
attr_accessor :delivery_type

  belongs_to :user
  has_many :products, dependent: :destroy

  validates :delivery_type, :address, :quantity, :totalprice, presence: true

end
