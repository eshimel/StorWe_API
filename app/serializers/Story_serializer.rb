class StorySerializer < Contribution::Serializer
  attributes :contribution, :clue, :outline_id, :user_id

    MAXIMUM_CONTRIBUTIONS = 3
  has_many :contributions
  has_many :users, through: :contributions
  has_many :clues
  has_many :users, through: :clues
end

