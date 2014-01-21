class CreateDataclips < ActiveRecord::Migration
  def change
    create_table :dataclips do |t|
      t.integer :db_connection_id
      t.string :title
      t.string :statement
      t.integer :user_id

      t.timestamps
    end
  end
end
