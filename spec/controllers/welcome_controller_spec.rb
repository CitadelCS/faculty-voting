require "rails_helper"
require_relative "../support/devise"

RSpec.describe WelcomeController, type: :controller do
  describe "GET /" do

    context "The welcome page should be rendered" do
      it "it rendered, a successful response(200) is received" do
        get :index

        expect(response).to be_successful
      end
    end
  end
end