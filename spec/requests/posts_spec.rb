require 'spec_helper'

describe 'posts' do
  describe 'GET /posts/:id' do
    it 'existing' do
      post = create(:post)
      get "/posts/#{post.id}"
      expect(response).to be_success
      expect(response.body).to eq(PostSerializer.new(post).to_json)
    end
    it 'not existing' do
      get 'posts/666'
      expect(response.status).to eq(404)
      expect(response.body).to eq("{\"errors\":\"Couldn't find Post with id=666\"}")
    end
  end
  it 'GET /posts' do
    post = create(:post)
    create_list(:post, 9)
    get '/posts'
    expect(response).to be_success
    expect(json.size).to eq(10)
    expect(response.body).to include(PostSerializer.new(post).to_json)
  end
  describe 'POST /posts' do
    it 'valid' do
      post '/posts', post: {content: 'foo bar'}
      expect(response.status).to eq(201)
      expect(response.body).to include('"content":"foo bar"')
      expect(response.body).to include('"user_id":' + @user.id.to_s)
    end
    it 'invalid' do
      post '/posts', post: {}
      expect(response.status).to eq(422)
      expect(json['errors']).to_not be_nil
    end
  end
end
