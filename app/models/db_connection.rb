class DbConnection < ActiveRecord::Base
	belongs_to :user
	belongs_to :db_connection_type
	has_many :dataclips

	attr_encrypted :username, :key => 'uAbhGft56!'
	attr_encrypted :hostname, :key => 'h54RBLoh!wsd'
	attr_encrypted :password, :key => 'pfgVK-F67mm'

	validates :title, :presence => { message: "Please enter a descriptive Title" }
	validates :db_connection_type_id, presence: true
#	validates :hostname, presence: true
	validates :port, presence: true
	validates :user_id, presence: true
	validates :database_name, presence: true

	before_save :check_db_connection

	def create_connect_string
		"#{db_connection_type.dbtype}://#{username}:#{password}@#{hostname}:#{port}/#{database_name}"
	end

	def check_db_connection
      #test connection
      begin
        @db = Sequel.connect(create_connect_string, :connect_timeout=>'4')
        @db.test_connection
      rescue Exception => exception
        p "EXCEPTION: " + exception.message
        errors.add(:base, exception.message)
        return false
      end
      return true
    end

end
