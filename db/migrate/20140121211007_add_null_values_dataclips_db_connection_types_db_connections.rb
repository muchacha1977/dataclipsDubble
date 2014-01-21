class AddNullValuesDataclipsDbConnectionTypesDbConnections < ActiveRecord::Migration
  def change
  	change_column :dataclips, :db_connection_id, :integer, :default => nil, :null => false
  	change_column :dataclips, :title, :string, :default => 'Dataclip', :null => false
  	change_column :dataclips, :statement, :text, :default => 'SELECT 1', :null => false
  	change_column :dataclips, :user_id, :integer, :default => nil, :null => false

  	change_column :db_connection_types, :dbtype, :string, :default => nil, :null => false

  	change_column :db_connections, :title, :string, :default => 'No Name', :null => false
  	change_column :db_connections, :db_connection_type_id, :integer, :default => nil, :null => false
  	change_column :db_connections, :hostname, :string, :default => 'example.com', :null => false
  	change_column :db_connections, :user_id, :integer, :default => nil, :null => false

  end
end
