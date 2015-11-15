class Contribution < ActiveRecord::Base
belongs_to :outline
has_one :user, through: :outline
has_one :clue, through: :outline
has_one :story, through: :outline

end
