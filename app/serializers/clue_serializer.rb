#
class ClueSerializer < User::Serializer
  attributes :clue, :outline_id, :user_id
end
