
class ContributionSerializer < ActiveModel::Serializer
  attributes :submission, :outline_id, :current_user
  belongs_to :user
  belongs_to :outline

  def

end
