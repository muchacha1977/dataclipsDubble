class DbConnection < ActiveRecord::Base
	belongs_to :user
	belongs_to :db_connection_type
	has_many :dataclips

	attr_encrypted :username, :key => 'uAbhGft56!'
	attr_encrypted :hostname, :key => 'h54RBLoh!wsd'
	attr_encrypted :password, :key => 'pfgVK-F67mm'

	validates :title, presence: true
	validates :db_connection_type_id, presence: true
#	validates :hostname, presence: true
	validates :port, presence: true
	validates :user_id, presence: true
	validates :database_name, presence: true

	def create_connect_string
		"#{db_connection_type.dbtype}://#{username}:#{password}@#{hostname}:#{port}/#{database_name}"
	end
end
