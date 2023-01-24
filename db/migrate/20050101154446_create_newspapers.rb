class CreateNewspapers < ActiveRecord::Migration[7.0]
  def change
    create_table :newspapers do |t|
      t.date :date
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
