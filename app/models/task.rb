class Task < ApplicationRecord
  belongs_to :project

  validates :content, presence: true

  enum status: { incoming: 0, in_progress: 1, done: 2 }

  scope :incomplete, -> { where.not(status: :done) }
end
