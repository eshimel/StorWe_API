class Story < ActiveRecord::Base
MAXIMUM_CONTRIBUTIONS = 3
belongs_to :outline
has_many :contributions, through: :outline
has_many :clues, through: :outline
has_many :users, through: :outline
end
