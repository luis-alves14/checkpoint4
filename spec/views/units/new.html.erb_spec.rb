require 'rails_helper'

RSpec.describe "units/new", type: :view do
  before(:each) do
    assign(:unit, Unit.new(
      description: "MyString",
      acronym: "MyString",
      city: "MyString"
    ))
  end

  it "renders new unit form" do
    render

    assert_select "form[action=?][method=?]", units_path, "post" do

      assert_select "input[name=?]", "unit[description]"

      assert_select "input[name=?]", "unit[acronym]"

      assert_select "input[name=?]", "unit[city]"
    end
  end
end
