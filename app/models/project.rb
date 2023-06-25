class Project < ApplicationRecord
  belongs_to :status
  belongs_to :user

  has_many :comments, as: :commentable, dependent: :destroy

  def assignee
    User.find(self.assigned_to)
  end


end
