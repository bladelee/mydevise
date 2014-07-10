require 'rails_helper'

RSpec.describe "apps/new", :type => :view do
  before(:each) do
    assign(:app, App.new(
      :name => "MyString",
      :type_message => false,
      :type_interphone => false,
      :internal_auth => false,
      :outer_auth_server => "MyString"
    ))
  end

  it "renders new app form" do
    render

    assert_select "form[action=?][method=?]", apps_path, "post" do

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_type_message[name=?]", "app[type_message]"

      assert_select "input#app_type_interphone[name=?]", "app[type_interphone]"

      assert_select "input#app_internal_auth[name=?]", "app[internal_auth]"

      assert_select "input#app_outer_auth_server[name=?]", "app[outer_auth_server]"
    end
  end
end
