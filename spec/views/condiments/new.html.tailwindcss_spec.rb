require 'rails_helper'

RSpec.describe "condiments/new", type: :view do
  before(:each) do
    assign(:condiment, Condiment.new(
      name: "MyString",
      quantity_in_grams: 1,
      description: "MyString"
    ))
  end

  it "renders new condiment form" do
    render

    assert_select "form[action=?][method=?]", condiments_path, "post" do

      assert_select "input[name=?]", "condiment[name]"

      assert_select "input[name=?]", "condiment[quantity_in_grams]"

      assert_select "input[name=?]", "condiment[description]"
    end
  end
end
