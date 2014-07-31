require 'rails_helper'

RSpec.describe "pieces/show", :type => :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      :price => 1.5,
      :sold => false,
      :artist => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
