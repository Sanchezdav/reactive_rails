class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :project, null: false, foreign_key: true
      t.string :content
      t.string :status, default: 'incoming'

      t.timestamps
    end
  end
end
