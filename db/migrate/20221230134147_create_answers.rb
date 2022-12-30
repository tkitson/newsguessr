class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.date :date

      t.timestamps
    end
  end
end
