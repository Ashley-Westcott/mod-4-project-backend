class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :content
      t.date :deadline
      t.belongs_to :user, foreign_key: true
      t.belongs_to :topic, foreign_key: true

      t.timestamps
    end
  end
end
