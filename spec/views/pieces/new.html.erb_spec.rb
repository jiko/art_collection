require 'rails_helper'

RSpec.describe "pieces/new", :type => :view do
  before(:each) do
    assign(:piece, Piece.new(
      :price => 1.5,
      :sold => false,
      :artist => nil,
      :name => "MyString"
    ))
  end

  it "renders new piece form" do
    render

    assert_select "form[action=?][method=?]", pieces_path, "post" do

      assert_select "input#piece_price[name=?]", "piece[price]"

      assert_select "input#piece_sold[name=?]", "piece[sold]"

      assert_select "input#piece_artist_id[name=?]", "piece[artist_id]"

      assert_select "input#piece_name[name=?]", "piece[name]"
    end
  end
end
