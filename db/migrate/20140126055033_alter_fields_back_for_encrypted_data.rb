class AlterFieldsBackForEncryptedData < ActiveRecord::Migration
  def change
  	rename_column :db_connections, :username_encrypted, :encrypted_username
  	rename_column :db_connections, :password_encrypted, :encrypted_password
  	rename_column :db_connections, :hostname_encrypted, :encrypted_hostname
  end
end
