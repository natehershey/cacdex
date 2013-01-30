require 'spec_helper'

describe "cactus/show" do
  before(:each) do
    @cactu = assign(:cactu, stub_model(Cactu))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
