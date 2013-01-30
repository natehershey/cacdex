require 'spec_helper'

describe "cacti/index" do
  before(:each) do
    assign(:cacti, [
      stub_model(Cactus,
        :common_name => "Common Name",
        :latin_name => "Latin Name",
        :description => "MyText",
        :notes => "MyText",
        :image => "Image"
      ),
      stub_model(Cactus,
        :common_name => "Common Name",
        :latin_name => "Latin Name",
        :description => "MyText",
        :notes => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of cacti" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "Latin Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
