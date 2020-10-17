class Task < ApplicationRecord
  belongs_to :project

  validates :content, presence: true

  enum status: { incoming: 'incoming', in_progress: 'in_progress', done: 'done' }

  def color
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
end
