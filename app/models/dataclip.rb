class Dataclip < ActiveRecord::Base
	belongs_to :user
	belongs_to :db_connection

	validates :db_connection_id, presence: true
	validates :title, presence: true
	validates :statement, presence: true
	validates :user_id, presence: true
	validates :link_token, presence: true

end
