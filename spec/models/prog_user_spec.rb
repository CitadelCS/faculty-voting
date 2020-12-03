require 'rails_helper'

RSpec.describe ProgUser, type: :model do

  describe 'Prog_User exists' do
    it "Check to see if the user exists" do
      prog_user = create(:ProgUser)

      expect(prog_user.user_id).to eq(1)
    end

    it "Check to see if the user does not exist" do
      prog_user = create(:ProgUser)

      expect(prog_user.user_id).not_to eq(2)
    end
  end
end
