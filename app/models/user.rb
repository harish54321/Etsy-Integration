class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :email,
    :password,
    :password_confirmation


  has_many :request_tokens
  has_many :access_tokens


  validates_presence_of :email
  validates_uniqueness_of :email

  validates_presence_of :password, :on => :create
  validates_confirmation_of :password, :if => :password
end
