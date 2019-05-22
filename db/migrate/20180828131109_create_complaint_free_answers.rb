class CreateComplaintFreeAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_free_answers do |t|
      t.string :answer_id
      t.string :text
      t.integer :opinion
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
