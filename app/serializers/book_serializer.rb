#
class ClueSerializer < ActiveModel::Serializer
  attributes :clue, :outline_id, :user_id
end
