require 'spec_helper'

describe "cacti/show" do
  before(:each) do
    @cactus = assign(:cactus, stub_model(Cactus,
      :common_name => "Common Name",
      :latin_name => "Latin Name",
      :description => "MyText",
      :notes => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Common Name/)
    rendered.should match(/Latin Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
  end
end
