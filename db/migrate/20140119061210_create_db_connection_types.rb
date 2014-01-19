class CreateDbConnectionTypes < ActiveRecord::Migration
  def change
    create_table :db_connection_types do |t|
      t.string :dbtype

      t.timestamps
    end
  end
end
