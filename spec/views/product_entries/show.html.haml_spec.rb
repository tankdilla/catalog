require 'rails_helper'

RSpec.describe "product_entries/show", :type => :view do
  before(:each) do
    @product_entry = assign(:product_entry, ProductEntry.create!(
      :product_id => 1,
      :price => "9.99",
      :source => "Source",
      :source_url => "Source Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/Source Url/)
  end
end
