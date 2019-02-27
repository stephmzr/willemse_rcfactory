class CreateComplaintsToAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints_to_answers do |t|
      t.references :complaint_answer, foreign_key: true
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
