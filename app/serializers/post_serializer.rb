class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at
  has_one :user, embed: :id

  def created_at
    object.created_at.to_i
  end
end
