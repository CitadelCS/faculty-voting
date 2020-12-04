require "rails_helper"
require_relative "../support/devise"

RSpec.describe RolesController, type: :controller do
  describe 'RolesController' do
    login_user

    context 'The role page index route is accessable' do
      it 'if rendered, a successful response(200) is received' do
        expect(get: roles_path).to route_to(controller: 'roles', action: 'index')
      end
    end

    context 'The new role page route is accessable' do
      it 'if rendered, a successful response(200) is received' do
        expect(get: new_role_path).to route_to(controller: 'roles', action: 'new')
      end
    end

    context 'The role index page is accessed' do
      it 'if rendered, a successful response(200) is received' do
        get :index

        expect(response).to be_successful
      end
    end

    context 'The role new page is accessed' do
      it 'if rendered, a successful response(200) is received' do
        get :new

        expect(response).to be_successful
      end
    end

    context 'Creating a new role' do
      it 'If created successfully a response(201) is received' do
        user_params = { role: { name: 'Group C', description: 'Proposal Group C', is_multi_role: false } }
        post :create, params: user_params, format: :json

        expect(response).to have_http_status(201)
      end
    end

    context 'Updating a role' do
      it 'If updated successfully a response(201) is received' do
        role = create(:role)
        user_params = { id: role.id, role: { name: 'Group C', description: 'Proposal Group C', is_multi_role: false } }
        put :update, params: user_params

        expect(response).to have_http_status(302)
      end
    end

    context 'Destroying (deleting) a role' do
      it 'If updated successfully a response(201) is received' do
        role = create(:role)
        #        user_params = { id: 2, :role => { :name => 'Group D', :description => 'Proposal Group D', :is_multi_role => false } }
        delete :destroy, params: { id: role.id }

        expect(response).to have_http_status(302)
      end
    end

    context 'Destroying (deleting) a non-existent role' do
      it 'We will get a status code of 302' do
        role = create(:role)
        #        user_params = { :id => 2, :role => { :name => 'Group D', :description => 'Proposal Group D', :is_multi_role => false } }
        delete :destroy, params: { id: role.id }

        expect(response).to have_http_status(302)
      end
    end

    context 'Replacing the deleted role' do
      it 'If created successfully a response(201) is received' do
        user_params = { role: { id: 2, name: 'Group B', description: 'Proposal Group B', is_multi_role: false } }
        post :create, params: user_params, format: :json

        expect(response).to have_http_status(201)
      end
    end

  end
end