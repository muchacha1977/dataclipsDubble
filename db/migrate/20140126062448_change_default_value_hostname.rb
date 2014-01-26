class ChangeDefaultValueHostname < ActiveRecord::Migration
  def change
  	change_column_default(:db_connections, :encrypted_hostname, nil)
  end
end
