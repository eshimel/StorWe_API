class Outline < ActiveRecord::Base
has_one :story
has_many :users
has_many :contributions
has_many :clues
end
