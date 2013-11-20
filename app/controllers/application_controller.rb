class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_filter :restrict_access

  protected

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      @current_user = User.find_by_api_token(token)
    end
  end
end
