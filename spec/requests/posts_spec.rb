require 'spec_helper'

describe 'posts' do
  it 'GET /posts/:id' do
    post = create(:post)
    get "/posts/#{post.id}"
    expect(response).to be_success
    expect(response.body).to eq(PostSerializer.new(post).to_json)
  end
  it 'GET /posts' do
    post = create(:post)
    create_list(:post, 9)
    get '/posts'
    expect(response).to be_success
    expect(json.size).to eq(10)
    expect(response.body).to include(PostSerializer.new(post).to_json)
  end
end
