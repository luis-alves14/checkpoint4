require 'rails_helper'

RSpec.describe "units/show", type: :view do
  before(:each) do
    assign(:unit, Unit.create!(
      description: "Description",
      acronym: "Acronym",
      city: "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Acronym/)
    expect(rendered).to match(/City/)
  end
end
