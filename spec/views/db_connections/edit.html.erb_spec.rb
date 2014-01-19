require 'spec_helper'

describe "db_connections/edit" do
  before(:each) do
    @db_connection = assign(:db_connection, stub_model(DbConnection))
  end

  it "renders the edit db_connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", db_connection_path(@db_connection), "post" do
    end
  end
end
