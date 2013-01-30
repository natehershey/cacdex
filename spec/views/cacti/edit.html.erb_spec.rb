require 'spec_helper'

describe "cacti/edit" do
  before(:each) do
    @cactus = assign(:cactus, stub_model(Cactus,
      :common_name => "MyString",
      :latin_name => "MyString",
      :description => "MyText",
      :notes => "MyText",
      :image => "MyString"
    ))
  end

  it "renders the edit cactus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cacti_path(@cactus), :method => "post" do
      assert_select "input#cactus_common_name", :name => "cactus[common_name]"
      assert_select "input#cactus_latin_name", :name => "cactus[latin_name]"
      assert_select "textarea#cactus_description", :name => "cactus[description]"
      assert_select "textarea#cactus_notes", :name => "cactus[notes]"
      assert_select "input#cactus_image", :name => "cactus[image]"
    end
  end
end
