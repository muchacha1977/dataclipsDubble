require 'spec_helper'

describe "db_connections/show" do
  before(:each) do
    @db_connection = assign(:db_connection, stub_model(DbConnection))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
