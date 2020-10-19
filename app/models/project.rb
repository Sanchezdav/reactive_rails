class Project < ApplicationRecord
  has_rich_text :description
  belongs_to :user
  has_many :tasks, -> { order(created_at: :asc) }, dependent: :destroy

  validates :name, presence: true

  def completion_percentage
    return 0 if tasks.none?

    ((tasks.done.count.to_f / tasks.count) * 100).round
  end
end
