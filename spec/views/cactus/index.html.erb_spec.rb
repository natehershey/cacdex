require 'spec_helper'

describe "cactus/index" do
  before(:each) do
    assign(:cactus, [
      stub_model(Cactu),
      stub_model(Cactu)
    ])
  end

  it "renders a list of cactus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
