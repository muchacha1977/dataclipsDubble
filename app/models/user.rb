class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable 
        
	has_many :db_connections
	has_many :dataclips

    validates :password, presence: true, length: { maximum: 50}
    validates :terms_and_conditions, :acceptance => true, :on => :create

	#validates_acceptance_of :terms_and_conditions,  :accept => true, :allow_nil => false

	validates :email,  presence: true,
		format: { with: VALID_EMAIL_REGEX }, 
		uniqueness: { case_sensitive: false }

end
