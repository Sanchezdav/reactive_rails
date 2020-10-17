class Project < ApplicationRecord
  has_rich_text :description
  belongs_to :user
  has_many :tasks, -> { order(created_at: :desc) }, dependent: :destroy

  validates :name, presence: true
end
