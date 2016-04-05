class Service < ActiveRecord::Base
  belongs_to :user
validates :service, presence: true, length: { maximum: 15 }
validates :description, presence: true, length: { maximum: 140 }

end
