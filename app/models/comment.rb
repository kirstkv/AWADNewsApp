class Comment < ActiveRecord::Base
  validates :commenter, :presence => true
  belongs_to :headline
end
