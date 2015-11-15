class User < ActiveRecord::Base
  include Authentication
  belongs_to :outline
  has_one :contribution, through: :outline
  has_one :clue, through: :outline
  has_one :story, through: :outline
end
