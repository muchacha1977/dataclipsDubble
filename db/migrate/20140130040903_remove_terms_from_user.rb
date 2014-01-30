class RemoveTermsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :terms_and_conditions, :boolean
  end
end
