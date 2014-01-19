require 'spec_helper'

describe "db_connections/new" do
  before(:each) do
    assign(:db_connection, stub_model(DbConnection).as_new_record)
  end

  it "renders new db_connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", db_connections_path, "post" do
    end
  end
end
