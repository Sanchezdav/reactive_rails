# frozen_string_literal: true

class TasksReflex < ApplicationReflex
  def change_status
    task = Task.find(element.dataset[:task_id].to_i)
    task.update(status: element[:value].to_i)
  end
end
