class MakeQuestionsLocaleEnabled < ActiveRecord::Migration
  def change
    add_column :questions, :question_fr, :string
    add_column :questions, :answer_fr, :text

    rename_column :questions, :question, :question_en
    rename_column :questions, :answer, :answer_en
  end
end
