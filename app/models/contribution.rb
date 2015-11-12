class Contribution < ActiveRecord::Base
belongs_to :outline

belongs_to :user
end
