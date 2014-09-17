require 'rails_helper'

RSpec.describe "product_entries/index", :type => :view do
  before(:each) do
    assign(:product_entries, [
      ProductEntry.create!(
        :product_id => 1,
        :price => "9.99",
        :source => "Source",
        :source_url => "Source Url"
      ),
      ProductEntry.create!(
        :product_id => 1,
        :price => "9.99",
        :source => "Source",
        :source_url => "Source Url"
      )
    ])
  end

  it "renders a list of product_entries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Source Url".to_s, :count => 2
  end
end
