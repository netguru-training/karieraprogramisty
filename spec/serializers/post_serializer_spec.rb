require 'spec_helper'

describe PostSerializer do
  let(:post) { create(:post) }
  let(:serializer) { PostSerializer.new(post) }
  let(:expected_results) { { id: post.id, content: post.content, created_at: post.created_at.to_i, user_id: post.user.id }.to_json }
  it { expect(serializer.to_json).to eq(expected_results) }
end
