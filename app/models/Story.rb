class Story < ActiveRecord::Base
has_many :contributions
has_many :users, through: :contributions
has_many :clues
has_many :users, through: :clues
end
