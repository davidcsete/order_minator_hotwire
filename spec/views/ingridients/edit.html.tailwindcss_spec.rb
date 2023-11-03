require 'rails_helper'

RSpec.describe "ingridients/edit", type: :view do
  let(:ingridient) {
    Ingridient.create!(
      kcalorie_count: 1,
      protein_count: 1,
      carbohydrate_count: 1,
      fat_count: 1,
      weight_in_gramms: 1,
      description: "MyString"
    )
  }

  before(:each) do
    assign(:ingridient, ingridient)
  end

  it "renders the edit ingridient form" do
    render

    assert_select "form[action=?][method=?]", ingridient_path(ingridient), "post" do

      assert_select "input[name=?]", "ingridient[kcalorie_count]"

      assert_select "input[name=?]", "ingridient[protein_count]"

      assert_select "input[name=?]", "ingridient[carbohydrate_count]"

      assert_select "input[name=?]", "ingridient[fat_count]"

      assert_select "input[name=?]", "ingridient[weight_in_gramms]"

      assert_select "input[name=?]", "ingridient[description]"
    end
  end
end
