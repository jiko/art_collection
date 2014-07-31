require 'rails_helper'

RSpec.describe "artists/show", :type => :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "Name",
      :bio => "MyText",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Contact/)
  end
end
