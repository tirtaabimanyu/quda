class Job < ApplicationRecord
  belongs_to :user
  has_many :log

  validates :name, :target, :presence => true
end
