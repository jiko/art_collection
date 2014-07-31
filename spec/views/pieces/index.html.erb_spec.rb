require 'rails_helper'

RSpec.describe "pieces/index", :type => :view do
  before(:each) do
    assign(:pieces, [
      Piece.create!(
        :price => 1.5,
        :sold => false,
        :artist => nil,
        :name => "Name"
      ),
      Piece.create!(
        :price => 1.5,
        :sold => false,
        :artist => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of pieces" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
