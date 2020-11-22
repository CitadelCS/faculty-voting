require 'rails_helper'

RSpec.describe "prog_users/edit", type: :view do
  before(:each) do
    @prog_user = assign(:prog_user, ProgUser.create!(
      :user_id => 1,
      :role_id => 1
    ))
  end

  it "renders the edit prog_user form" do
    render

    assert_select "form[action=?][method=?]", prog_user_path(@prog_user), "post" do

      assert_select "input[name=?]", "prog_user[user_id]"

      assert_select "input[name=?]", "prog_user[role_id]"
    end
  end
end
