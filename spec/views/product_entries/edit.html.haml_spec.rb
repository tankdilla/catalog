require 'rails_helper'

RSpec.describe "product_entries/edit", :type => :view do
  before(:each) do
    @product_entry = assign(:product_entry, ProductEntry.create!(
      :product_id => 1,
      :price => "9.99",
      :source => "MyString",
      :source_url => "MyString"
    ))
  end

  it "renders the edit product_entry form" do
    render

    assert_select "form[action=?][method=?]", product_entry_path(@product_entry), "post" do

      assert_select "input#product_entry_product_id[name=?]", "product_entry[product_id]"

      assert_select "input#product_entry_price[name=?]", "product_entry[price]"

      assert_select "input#product_entry_source[name=?]", "product_entry[source]"

      assert_select "input#product_entry_source_url[name=?]", "product_entry[source_url]"
    end
  end
end
