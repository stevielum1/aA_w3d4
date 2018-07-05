class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.string :text
      t.integer :question_id, null: false, index: true
      t.timestamps
    end
  end
end
