require "rails_helper"
require_relative "../support/devise"

RSpec.describe ProposalsController, type: :controller do
  describe 'ProposalsController' do
    login_user

    context 'The proposal index page route is accessible' do
      it 'if rendered, a successful response(200) is received' do
        expect(get: proposals_path).to route_to(controller: 'proposals', action: 'index')
      end
    end

    context 'The new proposal page route is accessable' do
      it 'it rendered, a successful response(200) is received' do
        expect(get: new_proposal_path).to route_to(controller: 'proposals', action: 'new')
      end
    end

    context 'The proposal index page is accessed' do
      it 'if rendered, a success response(200) is generated' do
        get :index

        expect(response).to be_successful
      end
    end

    context 'Accessing proposal new page' do
      it 'if rendered, a success response(200) is generated' do
        get :new

        expect(response).to be_successful
      end
    end

    context 'Destroying (deleting) a proposal' do
      it 'A status code of 302 is generated if it was previously deleted otherwise a 201' do
        proposal = create(:proposal)
        delete :destroy, params: { id: 1 }

        expect(response).to have_http_status(302)
      end
    end

    context 'Creating a new proposal' do
      it 'It created successfully and a response(201) was received' do
        user_params = { id: 1, proposal: { title: 'Test Proposal 1', active: 1, user_id: 1, proposal_id: 1, role_id: 1, group_type: 'Group A', archived: false } }
        post :create, params: user_params, format: :json

        expect(response).to have_http_status(201)
      end
    end

    context 'Updating a proposal' do
      it 'If the updated is successful a response(201) is received unless the record was moved then 302' do
        proposal = create(:proposal)
        user_params = { id: proposal.id, proposal: { id: proposal.id, title: 'Test Proposal 1', active: 1, user_id: 1, proposal_id: 1, role_id: 1, group_type: 'Group A', archived: false } }
        put :update, params: user_params

        expect(response).to have_http_status(302)
      end
    end

    context 'Editing a proposal' do
      it 'If the edit is successful a response(201) is received unless the record was moved then 302' do
        proposal = create(:proposal)
        user_params = { id: proposal.id, proposal: { id: proposal.id, title: 'Test Proposal 1', active: 1, user_id: 1, proposal_id: 1, role_id: 1, group_type: 'Group A', archived: false } }
        get :edit, params: user_params

        expect(response).to have_http_status(302)
      end
    end

    context 'Show a proposal' do
      it 'If page is displayed a response(200) is generated' do
        proposal = create(:proposal)
        user_params = { id: proposal.id, proposal: { id: proposal.id, title: 'Test Proposal 1', active: 1, user_id: 1, proposal_id: 1, role_id: 1, group_type: 'Group A', archived: false } }
        get :show, params: user_params

        expect(response).to have_http_status(200)
      end
    end

    context 'Upvote a proposal' do
      it 'If page is upvoted a response(200) is generated' do
        proposal = create(:proposal)
        user_params = { id: proposal.id, proposal: { id: proposal.id, title: 'Test Proposal 1', active: 1, user_id: 1, proposal_id: 1, role_id: 1, group_type: 'Group A', archived: false } }
        get :upvote, params: user_params

        expect(response).to have_http_status(302)
      end
    end

    context 'Downvote a proposal' do
      it 'If page is downvoted a response(200) is generated' do
        proposal = create(:proposal)
        user_params = { id: proposal.id, proposal: { id: proposal.id, title: 'Test Proposal 1', active: 1, user_id: 1, proposal_id: 1, role_id: 1, group_type: 'Group A', archived: false } }
        get :downvote, params: user_params

        expect(response).to have_http_status(302)
      end
    end

  end
end
