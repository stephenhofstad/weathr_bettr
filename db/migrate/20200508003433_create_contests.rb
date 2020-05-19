class CreateContests < ActiveRecord::Migration[6.0]
  def change
    create_table :contests do |t|
      t.string :date
      t.string :game
      t.string :win
      t.integer :line
      t.integer :real_temp

      t.timestamps
    end
  end
end
