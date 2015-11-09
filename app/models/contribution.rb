class Contribution < ActiveRecord::Base
belongs_to :outline, :counter_cache => true

belongs_to :user
end
