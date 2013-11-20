require 'spec_helper'

describe User do
  describe 'validations' do
    it { expect(build(:user)).to be_valid }
    [:login, :name, :api_token].each do |attr|
      it { expect(build(:user, attr => nil)).to_not be_valid}
    end
  end
end
