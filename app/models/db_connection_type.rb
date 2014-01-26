class DbConnectionType < ActiveRecord::Base
	has_many :db_connections

	validates :dbtype, presence: true

end
