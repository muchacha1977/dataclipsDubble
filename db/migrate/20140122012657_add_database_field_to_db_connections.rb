class AddDatabaseFieldToDbConnections < ActiveRecord::Migration
  def change
  	add_column :db_connections, :database_name, :string
  end
end
