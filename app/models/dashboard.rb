class Dashboard < ActiveRecord::Base
  belongs_to :user

validates :name, presence: true, length: { maximum: 14 }
validates :qualification, presence: true, length: { maximum: 50 }
validates :contact, presence: true, length: { maximum: 30 }

end
