class Task < ApplicationRecord
  belongs_to :project

  validates :content, presence: true

  enum status: { incoming: 0, in_progress: 1, done: 2 }

  scope :incomplete, -> { where.not(status: :done) }

  def badge_color
    case status
    when 'incoming'
      'badge-secondary'
    when 'in_progress'
      'badge-primary'
    when 'done'
      'badge-success'
    else
      'badge-secondary'
    end
  end

  def border_color
    case status
    when 'in_progress'
      'border-primary'
    when 'done'
      'border-success'
    end
  end
end
