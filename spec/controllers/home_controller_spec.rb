require "rails_helper"
require_relative "../support/devise"

RSpec.describe HomeController, type: :controller do
  describe "GET /" do

    context "The home page should be rendered" do
      it "it rendered, a successful response(200) is received" do
        get :index

        expect(response).to be_successful
      end
    end
  end
end