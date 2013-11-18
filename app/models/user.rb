class User < ActiveRecord::Base

  validates :name, :login, :api_token, presence: true

  has_many :posts
end
