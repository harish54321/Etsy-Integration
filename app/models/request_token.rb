class RequestToken < ActiveRecord::Base
  attr_accessible :secret,
    :token,
    :user


  belongs_to :user


  validates_presence_of :user,
    :secret,
    :token
end
