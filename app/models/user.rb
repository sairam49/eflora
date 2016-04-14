class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :requests
  has_many :services
  has_one  :dashboard
  has_many :products
  has_many :agreements
  has_many :orders
  has_many :comments
  has_many :requests

  def is_horitculturist?
    horticulturist == true
  end

  def has_horticultirist_profile?
    dashboard.present?
  end
end
