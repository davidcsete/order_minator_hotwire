require 'rails_helper'

RSpec.describe "meals/edit", type: :view do
  let(:meal) {
    Meal.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:meal, meal)
  end

  it "renders the edit meal form" do
    render

    assert_select "form[action=?][method=?]", meal_path(meal), "post" do

      assert_select "input[name=?]", "meal[name]"

      assert_select "textarea[name=?]", "meal[description]"
    end
  end
end
