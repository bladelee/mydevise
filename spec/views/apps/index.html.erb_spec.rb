require 'rails_helper'

RSpec.describe "apps/index", :type => :view do
  before(:each) do
    assign(:apps, [
      App.create!(
        :name => "Name",
        :type_message => false,
        :type_interphone => false,
        :internal_auth => false,
        :outer_auth_server => "Outer Auth Server"
      ),
      App.create!(
        :name => "Name",
        :type_message => false,
        :type_interphone => false,
        :internal_auth => false,
        :outer_auth_server => "Outer Auth Server"
      )
    ])
  end

  it "renders a list of apps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Outer Auth Server".to_s, :count => 2
  end
end
