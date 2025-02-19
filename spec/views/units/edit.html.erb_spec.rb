require 'rails_helper'

RSpec.describe "units/edit", type: :view do
  let(:unit) {
    Unit.create!(
      description: "MyString",
      acronym: "MyString",
      city: "MyString"
    )
  }

  before(:each) do
    assign(:unit, unit)
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(unit), "post" do

      assert_select "input[name=?]", "unit[description]"

      assert_select "input[name=?]", "unit[acronym]"

      assert_select "input[name=?]", "unit[city]"
    end
  end
end
