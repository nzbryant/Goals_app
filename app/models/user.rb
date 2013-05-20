require 'bcrypt'

class User
  include Mongoid::Document
  
  attr_accessor :password, :password_confirmation

  field :name, type: String
  field :email, type: String
  field :fish, type: String
  field :salt, type: String

  embeds_many :action_habits 
  embeds_many :beliefs 
  embeds_many :external_comms 
  embeds_many :internal_comms
  embeds_many :goals
  embeds_many :values

  validates :name, length: { minimum: 1 }
  validates :email, length: { minimum: 6 }, uniqueness: true


  before_save :encrypt_password

	def authenticate(password)
		if self.fish == BCrypt::Engine.hash_secret(password, self.salt)
			self
		else
			nil
		end
	end


  private

  def encrypt_password
  	if password.present?
  		self.salt = BCrypt::Engine.generate_salt
		self.fish = BCrypt::Engine.hash_secret(password, self.salt)
  		self.password = nil		
  	end
  end	

end
