class Agreement < ActiveRecord::Base
  belongs_to :user
 validates :flowers, presence: true, length: { maximum: 100 }
end
