class Product < ActiveRecord::Base
  belongs_to :user
  has_many :order_items
validates :url, presence: true, length: { maximum: 100 }
validates :title, presence: true, length: { maximum: 15 }
validates :cost, presence: true
validates :quantity, presence: true
validates_numericality_of :cost,:quantity, :greater_than => 0

end
