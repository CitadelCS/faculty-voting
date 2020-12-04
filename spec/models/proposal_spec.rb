require 'rails_helper'
RSpec.describe Proposal, type: :model do
  context 'validation tests' do
    it do
      proposal = Proposal.new(text: 'This is a sample proposal.').save
      expect(proposal).to eq(false)
    end
    it 'ensures description presence' do
      proposal = Proposal.new(title: 'Test Proposal').save
      expect(proposal).to eq(false)
    end
    it 'ensures grouptype presence' do
      proposal = Proposal.new(title: 'Test Proposal', text: 'This is a sample proposal.', role_id: 1).save
      expect(proposal).to eq(false)
    end
    it 'ensures roleid presence' do
      proposal = Proposal.new(title: 'Test Proposal', text: 'This is a sample proposal.', group_type: 'Group A').save
      expect(proposal).to eq(false)
    end
    it 'should not save successfully' do
      proposal = Proposal.new(title: 'Test Proposal', text: 'This is a test proposal').save
      expect(proposal).to eq(false)
    end
  end
end