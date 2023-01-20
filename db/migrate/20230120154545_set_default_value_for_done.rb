class SetDefaultValueForDone < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:newspapers, :done, from: nil, to: false)
  end
end
