#
class ClueSerializer < User::Serializer
  attributes :clue, :current_user

    belongs_to :user

    def current_user
    scope == object
  end
end
