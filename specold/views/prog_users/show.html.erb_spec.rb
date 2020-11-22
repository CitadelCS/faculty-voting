require 'rails_helper'

RSpec.describe "prog_users/show", type: :view do
  before(:each) do
    @prog_user = assign(:prog_user, ProgUser.create!(
      :user_id => 2,
      :role_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
