=begin
require "rails_helper"

RSpec.describe ProposalsController, type: :controller do
  describe "GET /" do
    login_user

    context "get list of proposals" do
      it "should return 200:OK" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end

=end