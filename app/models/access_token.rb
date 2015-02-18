class AccessToken < ActiveRecord::Base
  attr_accessible :secret,
    :token,
    :user,
    :shop_name,
    :enable_auto_renew,
    :renew_every_x_minutes


  belongs_to :user


  validates_presence_of :user,
    :secret,
    :token,
    :shop_name

  validates_numericality_of :renew_every_x_minutes,
    :only_integer => true,
    :greater_than_or_equal_to => 10

  validates_inclusion_of :enable_auto_renew,
    :in => [ true, false ]
end
