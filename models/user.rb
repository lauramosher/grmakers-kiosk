require 'digest/sha1'

class User
	include DataMapper::Resource
	property :id, Serial
	property :login, String, :length => 3..40, :required => true
	property :hashed_password, String
	property :salt, String
	property :created_at, DateTime, :default => DateTime.now

	attr_accessor :password
	validates_presence_of :login, :password
	def password=(pass)
		@password = pass
		self.salt = random_string(10) unless self.salt
		self.hashed_password = User.encrypt(@password, self.salt)
	end

	def self.login(login, pass)
		user = User.first(:login => login)
		return false if user.nil?
		return false unless User.encrypt(pass, user.salt) == user.hashed_password
		user
	end

	def self.encrypt(pass, salt)
		Digest::SHA1.hexdigest(pass + salt)
	end

	def rand_str(len)
		chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
		str = ""
		1.upto(len) { |i| str << chars[rand(chars.size-1)] }
		str
	end
end