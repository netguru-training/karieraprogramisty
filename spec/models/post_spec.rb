require 'spec_helper'

describe Post do
  describe 'validations' do
    it { expect(build(:post)).to be_valid }
    [:user_id, :content].each do |attr|
      it { expect(build(:post, attr => nil)).to_not be_valid }
    end
  end
end
