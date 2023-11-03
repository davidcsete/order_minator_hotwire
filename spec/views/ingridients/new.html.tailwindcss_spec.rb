require 'rails_helper'

RSpec.describe "ingridients/new", type: :view do
  before(:each) do
    assign(:ingridient, Ingridient.new(
      kcalorie_count: 1,
      protein_count: 1,
      carbohydrate_count: 1,
      fat_count: 1,
      weight_in_gramms: 1,
      description: "MyString"
    ))
  end

  it "renders new ingridient form" do
    render

    assert_select "form[action=?][method=?]", ingridients_path, "post" do

      assert_select "input[name=?]", "ingridient[kcalorie_count]"

      assert_select "input[name=?]", "ingridient[protein_count]"

      assert_select "input[name=?]", "ingridient[carbohydrate_count]"

      assert_select "input[name=?]", "ingridient[fat_count]"

      assert_select "input[name=?]", "ingridient[weight_in_gramms]"

      assert_select "input[name=?]", "ingridient[description]"
    end
  end
end
