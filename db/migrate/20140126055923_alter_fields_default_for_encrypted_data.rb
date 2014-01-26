class AlterFieldsDefaultForEncryptedData < ActiveRecord::Migration
  def change
  	  	change_column :db_connections, :encrypted_hostname, :text, :default => nil, :null => false
  	  	change_column :db_connections, :encrypted_username, :text, :default => nil, :null => false
  	  	change_column :db_connections, :encrypted_password, :text, :default => nil, :null => false
  end
end
