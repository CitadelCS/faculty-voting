require 'rails_helper'

RSpec.describe "prog_users/index", type: :view do
  before(:each) do
    assign(:prog_users, [
      ProgUser.create!(
        :user_id => 2,
        :role_id => 3
      ),
      ProgUser.create!(
        :user_id => 2,
        :role_id => 3
      )
    ])
  end

  it "renders a list of prog_users" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
