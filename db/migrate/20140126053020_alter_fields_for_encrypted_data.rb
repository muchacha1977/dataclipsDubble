class AlterFieldsForEncryptedData < ActiveRecord::Migration
  def change
  	rename_column :db_connections, :username, :username_encrypted
  	rename_column :db_connections, :password, :password_encrypted
  	rename_column :db_connections, :hostname, :hostname_encrypted
  end
end
