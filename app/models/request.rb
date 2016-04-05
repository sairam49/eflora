class Request < ActiveRecord::Base

belongs_to :user

validates :order, presence: true, length: { maximum: 140 }

end
