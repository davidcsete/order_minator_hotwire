require 'rails_helper'

RSpec.describe "condiments/show", type: :view do
  before(:each) do
    assign(:condiment, Condiment.create!(
      name: "Name",
      quantity_in_grams: 2,
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
  end
end
