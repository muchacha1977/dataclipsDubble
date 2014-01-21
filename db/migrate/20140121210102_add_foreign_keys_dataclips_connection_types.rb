class AddForeignKeysDataclipsConnectionTypes < ActiveRecord::Migration
  def change
  	  	add_foreign_key :db_connections, :db_connection_types, dependent: :delete
  	  	add_foreign_key :dataclips, :users, dependent: :delete
  	  	add_foreign_key :dataclips, :db_connections, dependent: :delete
  end
end
