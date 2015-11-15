class Clue < ActiveRecord::Base
belongs_to :outline
has_one :user, through: :outline
has_one :contribution, through: :outline
has_one :story, through: :outline

end


