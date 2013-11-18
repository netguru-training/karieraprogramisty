require 'spec_helper'

describe Post do
  describe 'validations' do
    it { build(:post).should be_valid }
    [:user_id, :content].each do |attr|
      it { build(:post, attr => nil).should_not be_valid }
    end
  end
end
