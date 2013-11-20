require 'spec_helper'

describe 'posts' do
  it 'show' do
    post = create(:post)
    get "/posts/#{post.id}"
    expect(response).to be_success
    expect(response.body).to eq(PostSerializer.new(post).to_json)
  end
end
