class Asset < ActiveRecord::Base
    dragonfly_accessor :asset
    validates :asset, presence: true
    belongs_to :user
end
