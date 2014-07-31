require 'rails_helper'

RSpec.describe "pieces/edit", :type => :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      :price => 1.5,
      :sold => false,
      :artist => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit piece form" do
    render

    assert_select "form[action=?][method=?]", piece_path(@piece), "post" do

      assert_select "input#piece_price[name=?]", "piece[price]"

      assert_select "input#piece_sold[name=?]", "piece[sold]"

      assert_select "input#piece_artist_id[name=?]", "piece[artist_id]"

      assert_select "input#piece_name[name=?]", "piece[name]"
    end
  end
end
