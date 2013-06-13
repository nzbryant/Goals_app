require 'bcrypt'

class User
  include Mongoid::Document
  #include ActiveModel::SecurePassword 
 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable

  # Setup accessible (or protected) attributes for your model
    
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
  :encrypted_password, :remember_created_at, :reset_password_token, :reset_password_sent_at
  
  #I think attr_accessor messes up with attr_accessible. 
  #Do you really need to have an attr_accessor?, if not simply remove it.
  #You need to add attr_accessor for :password as that is not saved to the database for security reasons 
  #With password in attr_accessor, evise does not seem to create an encrypted password for the model
  attr_accessor   :goals

  field :email, type: String
  field :fish, type: String
  field :salt, type: String
  # field :password, type: String
  field :encrypted_password, type: String
  field :confirmation_token,   :type => String
  field :confirmed_at,         :type => Time
  field :confirmation_sent_at, :type => Time
  field :unconfirmed_email,    :type => String
  field :remember_created_at, :type=> DateTime
  field :reset_password_token,  :type => String
  field :reset_password_sent_at, :type=> DateTime

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

  validates :email, length: { minimum: 4 }, presence: true, uniqueness: true
  validates_presence_of :password, :on => :create
  validates :password, length: { minimum: 5 } , presence: true
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
