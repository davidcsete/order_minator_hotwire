require 'rails_helper'

RSpec.describe "condiments/edit", type: :view do
  let(:condiment) {
    Condiment.create!(
      name: "MyString",
      quantity_in_grams: 1,
      description: "MyString"
    )
  }

  before(:each) do
    assign(:condiment, condiment)
  end

  it "renders the edit condiment form" do
    render

    assert_select "form[action=?][method=?]", condiment_path(condiment), "post" do

      assert_select "input[name=?]", "condiment[name]"

      assert_select "input[name=?]", "condiment[quantity_in_grams]"

      assert_select "input[name=?]", "condiment[description]"
    end
  end
end
