class Dataclip < ActiveRecord::Base
	belongs_to :user
	belongs_to :db_connection
end
