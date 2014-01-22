class DbConnection < ActiveRecord::Base
	belongs_to :user
	belongs_to :db_connection_type
	has_many :dataclips

	def create_connect_string
		"#{db_connection_type.dbtype}://#{username}:#{password}@#{hostname}:#{port}/#{database_name}"
	end
end
