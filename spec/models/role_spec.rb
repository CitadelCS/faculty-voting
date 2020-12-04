require 'rails_helper'

RSpec.describe Role, type: :model do

  describe 'Role exists' do
    it 'Check to see if the role exists' do
      role = create(:role)

      expect(role.name).to eq('Group A')
    end

    it 'Check to see if the role does not exist' do
      role = create(:role)

      expect(role.name).not_to eq('Group B')
    end
    it 'Check to see if multi_role does not exist' do
      role = create(:role)
  
      expect(role.is_multi_role).not_to eq(true)
      expect(role.name).not_to eq('Group A+B')
    end
  end
end
