require 'rails_helper'

RSpec.describe "products/edit", :type => :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :company_id => 1,
      :quality_rating => 1,
      :item_type_id => 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_company_id[name=?]", "product[company_id]"

      assert_select "input#product_quality_rating[name=?]", "product[quality_rating]"

      assert_select "input#product_item_type_id[name=?]", "product[item_type_id]"
    end
  end
end
