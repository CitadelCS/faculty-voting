require "rails_helper"
require_relative "../support/devise"

RSpec.describe ProgUsersController, type: :controller do
  describe 'ProgUsersController' do
    login_user

    context 'The prog_user index page route is accessible' do
      it 'if rendered, a success response(200) is generated' do
        expect(get: '/prog_users').to route_to(controller: 'prog_users', action: 'index')
      end
    end

    context 'The new prog_user page route is accessible' do
      it 'if rendered, a success response(200) is generated' do
        expect(get: '/prog_users/new').to route_to(controller: 'prog_users', action: 'new')
      end
    end

    context 'The prog_user index page is accessed' do
      it 'if rendered, a success response(200) is generated' do
        get :index

        expect(response).to be_successful
      end
    end

    context 'The new prog_user page is accessed' do
      it 'if rendered, a success response(200) is generated' do
        get :new

        expect(response).to be_successful
      end
    end

    context 'Creating a new prog_user' do
      it 'If successful a response(201) is generated' do
        prog_user = create(:ProgUser)
        user_params = { prog_user: { id: prog_user.id, user_id: 1, role_id: 1 } }
        post :create, params: user_params, format: :json

        expect(response).to have_http_status(201)
      end
    end

    context 'The updating a role' do
      it 'It updated successfully and a response(201) is generated of a 302 if the record has move' do
        prog_user = create(:ProgUser)
        user_params = { id: prog_user.id, prog_user: { id: prog_user.id, user_id: 1, role_id: 1 } }
        put :update, params: user_params

        expect(response).to have_http_status(302)
      end
    end

    context 'The editing a role' do
      it 'If successful a response(200) is generated' do
        prog_user = create(:ProgUser)
        user_params = { id: prog_user.id, prog_user: { id: prog_user.id, user_id: 1, role_id: 1 } }
        get :edit, params: user_params

        expect(response).to have_http_status(200)
      end
    end

    context 'Destroying (deleting) a prog_user' do
      it 'It will get a status code of 201 if successful and a 302 if the record has been moved' do
        prog_user = create(:ProgUser)
        delete :destroy, params: { id: prog_user.id }

        expect(response).to have_http_status(302)
      end
    end

  end
end
