require 'spec_helper'

describe "dataclips/show" do
  before(:each) do
    @dataclip = assign(:dataclip, stub_model(Dataclip,
      :db_connection_id => 1,
      :title => "Title",
      :statement => "Statement",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/Statement/)
    rendered.should match(/2/)
  end
end
