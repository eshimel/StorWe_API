class User < ActiveRecord::Base
  include Authentication

  has_many :contributions
  has_many :clues
end
