class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.boolean :is_private
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
