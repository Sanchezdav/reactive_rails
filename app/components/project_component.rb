class ProjectComponent < ViewComponent::Base
  def initialize(project)
    @project = project[:project]
  end

  def created_at_formatted
    project.created_at.strftime('%Y/%m/%d')
  end

  private

  attr_reader :project
end
