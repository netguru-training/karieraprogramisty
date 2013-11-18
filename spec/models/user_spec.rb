require 'spec_helper'

describe User do
  describe 'validations' do
    it { build(:user).should be_valid }
    [:login, :name, :api_token].each do |attr|
      it { build(:user, attr => nil).should_not be_valid}
    end
  end
end
