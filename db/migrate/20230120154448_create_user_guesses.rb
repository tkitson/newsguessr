class CreateUserGuesses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_guesses do |t|
      t.date :date

      t.timestamps
    end
  end
end
