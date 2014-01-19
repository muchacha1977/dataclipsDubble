require 'spec_helper'

describe "db_connections/index" do
  before(:each) do
    assign(:db_connections, [
      stub_model(DbConnection),
      stub_model(DbConnection)
    ])
  end

  it "renders a list of db_connections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
