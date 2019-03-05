class CreateComplaintAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :complaint_answers do |t|
      t.string :text
      t.integer :complaint_kind
      t.integer :opinion
      t.integer :question_number
      t.integer :answer_number
      t.string :extra_info
      t.string :summary_text
      t.integer :coef

      t.timestamps
    end
  end
end
