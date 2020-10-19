class TaskComponent < ViewComponent::Base
  def initialize(task)
    @task = task[:task]
  end

  def badge_color
    case task.status
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
    case task.status
    when 'in_progress'
      'border-primary'
    when 'done'
      'border-success'
    end
  end

  private

  attr_reader :task
end
