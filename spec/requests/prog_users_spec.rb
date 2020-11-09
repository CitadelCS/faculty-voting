require 'rails_helper'

RSpec.describe "ProgUsers", type: :request do
  describe "GET /prog_users" do
    it "works! (now write some real specs)" do
      get prog_users_path
      expect(response).to have_http_status(200)
    end
  end
end
