require 'spec_helper'

describe "cactus/new" do
  before(:each) do
    assign(:cactu, stub_model(Cactu).as_new_record)
  end

  it "renders new cactu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cactus_path, :method => "post" do
    end
  end
end
