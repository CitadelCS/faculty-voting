require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'User exists' do
    it 'Check to see if the user exists' do
      user = create(:user)

      expect(user.email).should_not be_nil
    end

    it 'Check to see if the user does not exist' do
      user = create(:user)

      expect(user.email).not_to eq('1elcid2@elcid.edu')
    end
  end
end
