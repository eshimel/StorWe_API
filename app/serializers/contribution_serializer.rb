
class ContributionSerializer < ActiveModel::Serializer
  attributes :contribution, :outline_id, :user_id
  belongs_to :user
  belongs_to :outline, :counter_cache => true

  def

end
