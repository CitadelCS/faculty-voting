require 'rails_helper'

RSpec.describe ProgUser, type: :model do

  describe 'Prog_User exists' do
    it 'Check to see if the user exists' do
      prog_user = create(:ProgUser)

      expect(prog_user.user.id).to eq(1)
    end

    it 'Check to see if the user role exists' do
      prog_user = create(:ProgUser)

      expect(prog_user.role.name).to eq('Group A')
    end

    it 'Check to see if the user does not exist' do
      prog_user = create(:ProgUser)

      expect(prog_user.user_id).not_to eq(2)
    end

    it 'Check to see if the user role is not multi role' do
      prog_user = create(:ProgUser)

      expect(prog_user.role.isMultiRole?).to eq(false)
    end

    it 'Check to see if the user role is correct version' do
      prog_user = create(:ProgUser)
      role = prog_user.user.role

      expect(role.id).to eq(1)
    end
  end
end
