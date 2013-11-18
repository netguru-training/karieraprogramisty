class Post < ActiveRecord::Base

  validates :user, :content, presence: true

  belongs_to :user
end
