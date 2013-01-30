require 'spec_helper'

describe "cactus/edit" do
  before(:each) do
    @cactu = assign(:cactu, stub_model(Cactu))
  end

  it "renders the edit cactu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cactus_path(@cactu), :method => "post" do
    end
  end
end
