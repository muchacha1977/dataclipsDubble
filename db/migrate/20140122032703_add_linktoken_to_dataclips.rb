class AddLinktokenToDataclips < ActiveRecord::Migration
  def change
  	add_column :dataclips, :link_token, :string, default:nil, null:false, unique:true
  end
end
