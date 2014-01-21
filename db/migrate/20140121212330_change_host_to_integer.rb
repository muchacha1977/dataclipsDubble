class ChangeHostToInteger < ActiveRecord::Migration
  def change
  	  	execute 'ALTER TABLE "db_connections" ALTER COLUMN "port" TYPE integer USING CAST(port AS INTEGER)'
  end
end
