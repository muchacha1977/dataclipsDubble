class AddUserForeignKeyToDbConnection < ActiveRecord::Migration
  def change
  	add_foreign_key :db_connections, :users, dependent: :delete
  end
end
