require 'spec_helper'

describe "dataclips/edit" do
  before(:each) do
    @dataclip = assign(:dataclip, stub_model(Dataclip,
      :db_connection_id => 1,
      :title => "MyString",
      :statement => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit dataclip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dataclip_path(@dataclip), "post" do
      assert_select "input#dataclip_db_connection_id[name=?]", "dataclip[db_connection_id]"
      assert_select "input#dataclip_title[name=?]", "dataclip[title]"
      assert_select "input#dataclip_statement[name=?]", "dataclip[statement]"
      assert_select "input#dataclip_user_id[name=?]", "dataclip[user_id]"
    end
  end
end
