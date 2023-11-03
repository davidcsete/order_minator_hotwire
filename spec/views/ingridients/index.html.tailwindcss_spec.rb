require 'rails_helper'

RSpec.describe "ingridients/index", type: :view do
  before(:each) do
    assign(:ingridients, [
      Ingridient.create!(
        kcalorie_count: 2,
        protein_count: 3,
        carbohydrate_count: 4,
        fat_count: 5,
        weight_in_gramms: 6,
        description: "Description"
      ),
      Ingridient.create!(
        kcalorie_count: 2,
        protein_count: 3,
        carbohydrate_count: 4,
        fat_count: 5,
        weight_in_gramms: 6,
        description: "Description"
      )
    ])
  end

  it "renders a list of ingridients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
