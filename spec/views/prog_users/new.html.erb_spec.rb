require 'rails_helper'

RSpec.describe "prog_users/new", type: :view do
  before(:each) do
    assign(:prog_user, ProgUser.new(
      :user_id => 1,
      :role_id => 1
    ))
  end

  it "renders new prog_user form" do
    render

    assert_select "form[action=?][method=?]", prog_users_path, "post" do

      assert_select "input[name=?]", "prog_user[user_id]"

      assert_select "input[name=?]", "prog_user[role_id]"
    end
  end
end
