require 'rails_helper'
RSpec.describe Proposal, type: :model do
  context 'validation tests' do
    it 'ensures title presence' do
      proposal = Proposal.new(text: 'This is a sample proposal.').save
      expect(proposal).to eq(false)
    end
    it 'ensures description presence' do
      proposal = Proposal.new(title: 'Test Proposal').save
      expect(proposal).to eq(false)
    end
    it 'ensures grouptype presence' do
      proposal = Proposal.new(title: 'Test Proposal', text: 'This is a sample proposal.', role_id: 'a').save
      expect(proposal).to eq(false)
    end
    it 'ensures roleid presence' do
      proposal = Proposal.new(title: 'Test Proposal', text: 'This is a sample proposal.', group_type: 'a').save
      expect(proposal).to eq(false)
    end
    it 'should save successfully' do
      proposal = Proposal.new(title: 'Test Proposal', text: 'This is a test proposal').save
      expect(proposal).to eq(true)
    end
  end
end