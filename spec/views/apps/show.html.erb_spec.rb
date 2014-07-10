require 'rails_helper'

RSpec.describe "apps/show", :type => :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :name => "Name",
      :type_message => false,
      :type_interphone => false,
      :internal_auth => false,
      :outer_auth_server => "Outer Auth Server"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Outer Auth Server/)
  end
end
