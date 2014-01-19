class CreateDbConnections < ActiveRecord::Migration
  def change
    create_table :db_connections do |t|
      t.string :title
      t.integer :db_connection_type_id
      t.string :hostname
      t.string :port
      t.string :username
      t.string :password
      t.integer :user_id

      t.timestamps
    end
  end
end
