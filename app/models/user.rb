class User < ActiveRecord::Base
  authenticates_with_sorcery! do |config|
      config.authentications_class = Authentication
  end

  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
  has_many :assets, :dependent => :destroy

end
