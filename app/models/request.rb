class Request < ActiveRecord::Base

belongs_to :user
has_many :comments

validates :order, presence: true, length: { maximum: 140 }

end
