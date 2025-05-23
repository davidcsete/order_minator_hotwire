require 'rails_helper'

RSpec.describe "condiments/index", type: :view do
  before(:each) do
    assign(:condiments, [
      Condiment.create!(
        name: "Name",
        quantity_in_grams: 2,
        description: "Description"
      ),
      Condiment.create!(
        name: "Name",
        quantity_in_grams: 2,
        description: "Description"
      )
    ])
  end

  it "renders a list of condiments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
