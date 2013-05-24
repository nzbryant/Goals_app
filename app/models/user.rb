require 'bcrypt'

class User
  include Mongoid::Document
  #include ActiveModel::SecurePassword 
  
  attr_accessible :email, :password, :password_confirmation

  attr_accessor :password, :password_confirmation, :goals

  field :email, type: String
  field :fish, type: String
  field :salt, type: String

  #field :password_digest, :type => String  
  #has_secure_password

  embeds_many :goals
  accepts_nested_attributes_for :goals 
  embeds_many :habits 
  embeds_many :beliefs 
  embeds_many :external_comms 
  embeds_many :internal_comms
  embeds_many :values
  embeds_many :character_traits

  validates :email, length: { minimum: 6 }, uniqueness: true
  validates_presence_of :password, :on => :create
  validates :password, length: { minimum: 5 } 
  validates_confirmation_of :password
  
  before_save :encrypt_password

	def self.find_by_email(email)
    where(:email => email).first
  end

  def self.authenticate(email, password)
     user = find_by_email(email)
     if user && user.fish == BCrypt::Engine.hash_secret(password, user.salt)
       user
     else
       nil
     end
   end

  private

  def encrypt_password
  	if password.present?
  		self.salt = BCrypt::Engine.generate_salt
		  self.fish = BCrypt::Engine.hash_secret(password, salt)
  		self.password = nil		
  	end
  end	

end
