require 'spec_helper'

describe 'authentication' do
  it  'without valid token' do
    get '/posts'
    expect(response.status).to  eq(401)
  end
  it 'with valid token' do
    @user = create(:user)
    get '/posts', nil, authorization: ActionController::HttpAuthentication::Token.encode_credentials(@user.api_token)
    expect(response.status).to eq(200)
  end
end
