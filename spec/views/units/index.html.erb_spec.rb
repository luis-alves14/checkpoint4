require 'rails_helper'

RSpec.describe "units/index", type: :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        description: "Description",
        acronym: "Acronym",
        city: "City"
      ),
      Unit.create!(
        description: "Description",
        acronym: "Acronym",
        city: "City"
      )
    ])
  end

  it "renders a list of units" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Acronym".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
  end
end
