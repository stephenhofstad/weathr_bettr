class CreateContests < ActiveRecord::Migration[6.0]
  def change
    create_table :contests do |t|
      t.string :date
      t.string :time
      t.string :win
      t.string :line

      t.timestamps
    end
  end
end
